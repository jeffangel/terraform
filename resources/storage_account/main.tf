resource "azurerm_storage_account" "stg_account" {
  name                     = var.name
  resource_group_name      = var.rg_name
  location                 = var.location
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type
  account_kind             = var.account_kind
  is_hns_enabled           = var.is_hns_enabled
}

resource "azurerm_storage_container" "container1" {
  name                  = var.container1_name
  storage_account_name  = azurerm_storage_account.stg_account.name
  container_access_type = var.container_access_type
}

resource "azurerm_storage_container" "container2" {
  name                  = var.container2_name
  storage_account_name  = azurerm_storage_account.stg_account.name
  container_access_type = var.container_access_type
}