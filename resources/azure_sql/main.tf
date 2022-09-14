resource "azurerm_storage_account" "stg" {
  name                     = var.stg_name
  resource_group_name      = var.rg_name
  location                 = var.location
  account_tier             = var.stg_account_tier
  account_replication_type = var.stg_account_replication_type
}

resource "azurerm_mssql_server" "dbsrv" {
  name                         = var.dbsrv_name
  resource_group_name          = var.rg_name
  location                     = var.location
  version                      = var.dbsrv_version
  administrator_login          = var.dbsrv_administrator_login
  administrator_login_password = var.dbsrv_administrator_login_password
}

resource "azurerm_mssql_database" "db" {
  name           = var.db_name
  server_id      = azurerm_mssql_server.dbsrv.id
  collation      = var.db_collation
  license_type   = var.db_license_type
  max_size_gb    = var.db_max_size_gb
  sku_name       = var.db_sku_name
}