resource "azurerm_data_factory" "adf" {
  name                = var.name
  location            = var.location
  resource_group_name = var.rg_name
  
  identity {
    type = "SystemAssigned"
  }
  
  github_configuration {  
    account_name = var.account_name
    branch_name = var.branch_name
    git_url = var.git_url
    repository_name = var.adf_repository_name
    root_folder = var.root_folder
  }
}
/*
data "azurerm_client_config" "current" {
}

resource "azurerm_data_factory_linked_service_data_lake_storage_gen2" "link1" {
  name                  = var.ls1_name
  data_factory_id       = azurerm_data_factory.adf.id
  storage_account_key   = var.dtlkv2_key #"assaas"
  url                   = var.dtlkv2_url #"https://stgdtlkg2iotjean93.dfs.core.windows.net"
}

resource "azurerm_data_factory_linked_service_data_lake_storage_gen2" "link2" {
  name                  = var.ls2_name
  data_factory_id       = azurerm_data_factory.adf.id
  storage_account_key   = var.dtlkv2_key
  url                   = var.dtlkv2_url
}

resource "azurerm_data_factory_linked_service_key_vault" "link3" {
  name            = var.ls3_name
  data_factory_id = azurerm_data_factory.adf.id
  key_vault_id    = var.kv_id
}
*/