data "azurerm_client_config" "current" {}

resource "azurerm_storage_account" "stg" {
  name                     = var.stg_name
  resource_group_name      = var.rg_name
  location                 = var.location
  account_tier             = var.stg_account_tier
  account_replication_type = var.stg_account_replication_type
  account_kind             = var.stg_account_kind
}

resource "azurerm_storage_data_lake_gen2_filesystem" "dtlkg2" {
  name               = var.dl_name
  storage_account_id = azurerm_storage_account.stg.id
}

resource "azurerm_synapse_workspace" "synapse" {
  name                                 = var.workspace_name
  resource_group_name                  = var.rg_name
  location                             = var.location
  storage_data_lake_gen2_filesystem_id = azurerm_storage_data_lake_gen2_filesystem.dtlkg2.id
  sql_administrator_login              = var.sql_administrator_login
  sql_administrator_login_password     = var.sql_administrator_login_password
  managed_resource_group_name = var.managed_rg_name

  identity {
    type = "SystemAssigned"
  }

  aad_admin {
    login     = "AzureAD Admin"
    tenant_id = data.azurerm_client_config.current.tenant_id
    object_id = data.azurerm_client_config.current.object_id
  }
  
  github_repo {  
    account_name = var.account_name
    branch_name = var.branch_name
    git_url = var.git_url
    repository_name = var.snpse_repository_name
    root_folder = var.root_folder
  }
}

resource "azurerm_synapse_sql_pool" "dwh" {
  name                 = var.sql_pool_name
  synapse_workspace_id = azurerm_synapse_workspace.synapse.id
  sku_name             = var.sql_sku_name
  create_mode          = var.sql_create_mode
}

