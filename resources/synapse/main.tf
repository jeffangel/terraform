resource "azurerm_storage_account" "stg" {
  name                     = "stgdtlkg2jean93"
  resource_group_name      = "RG_Tesis"
  location                 = "East US"
  account_tier             = "Standard"
  account_replication_type = "LRS"
  account_kind             = "BlobStorage"
}

resource "azurerm_storage_data_lake_gen2_filesystem" "dtlkg2" {
  name               = "dtlkg2jean93"
  storage_account_id = azurerm_storage_account.stg.id
}

resource "azurerm_synapse_workspace" "synapse" {
  name                                 = "synapsejean93"
  resource_group_name                  = "RG_Tesis"
  location                             = "East US"
  storage_data_lake_gen2_filesystem_id = azurerm_storage_data_lake_gen2_filesystem.dtlkg2.id
  sql_administrator_login              = "sqladmin"
  sql_administrator_login_password     = "B3lcorp2018$"

  identity {
    type = "SystemAssigned"
  }
}

resource "azurerm_synapse_sql_pool" "dwh" {
  name                 = "sqlpooljean93"
  synapse_workspace_id = azurerm_synapse_workspace.synapse.id
  sku_name             = "DW100c"
  create_mode          = "Default"
}