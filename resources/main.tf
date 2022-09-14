terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.18.0"
    }
  }
}

# Configure for Microsoft Azure Provider
provider "azurerm" {
  features {
  }
}

module "rg" {
  source   = "./resource_group"
  name     = var.rg_name
  location = var.location
}
/*
module "stg_acc" {
  source                   = "./storage_account"
  name                     = var.stg_name
  rg_name                  = module.rg.name
  location                 = module.rg.location
  account_tier             = var.stg_account_tier
  account_replication_type = var.stg_account_replication_type
  account_kind             = var.stg_account_kind
  is_hns_enabled           = var.stg_is_hns_enabled
  container1_name           = var.stg_container1_name
  container2_name           = var.stg_container2_name
  container_access_type    = var.stg_container_access_type
}

module "iot_hub" {
  source                         = "./iot_hub"
  name                           = var.iothub_name
  rg_name                        = module.rg.name
  location                       = module.rg.location
  sku_name                       = var.iothub_sku_name
  sku_capacity                   = var.iothub_sku_capacity
  endpoint_type                  = var.iothub_endpoint_type
  primary_blob_connection_string = module.stg_acc.primary_blob_connection_string
  endpoint_name                  = var.iothub_endpoint_name
  endpoint_batch_frequency       = var.iothub_endpoint_batch_frequency
  endpoint_max_chunk             = var.iothub_endpoint_max_chunk
  endpoint_container_name        = module.stg_acc.container1_name
  endpoint_encode_name           = var.iothub_endpoint_encode_name
  endpoint_format                = var.iothub_endpoint_format
  route_name                     = var.iothub_route_name
  route_source                   = var.iothub_route_source
  route_condition                = var.iothub_route_condition
  route_endpoint_names           = var.iothub_route_endpoint_names
  route_enabled                  = var.iothub_route_enabled
}

module "adf" {
  source   = "./data_factory"
  name     = var.adf_name
  rg_name  = module.rg.name
  location = module.rg.location
  account_name    = var.github_account_name
  branch_name     = var.github_branch_name
  branch_git_url  = var.github_url
  adf_repository_name = var.adf_github_repository_name
  root_folder     = var.github_root_folder

}

module "kv" {
  source                  = "./key_vault"
  name                    = var.kv_name
  rg_name                 = module.rg.name
  location                = module.rg.location
  sku_name                = var.kv_sku_name
  certificate_permissions = var.kv_adf_certificate_permissions
  key_permissions         = var.kv_adf_key_permissions
  secret_permissions      = var.kv_adf_secret_permissions
  storage_permissions     = var.kv_adf_storage_permissions
  
  object_id               = module.adf.object_id
  kvs1_name               = var.kv_kvs1_name
  kvs1_value              = module.stg_acc.primary_access_key
  kvs2_name               = var.kv_kvs2_name
  kvs2_value              = module.stg_acc.primary_dfs_endpoint
}
*/
module "synapse" {
  source                           = "./synapse"
  rg_name                          = module.rg.name
  location                         = module.rg.location
  stg_name                         = var.snpse_pool_stg_name
  stg_account_tier                 = var.stg_account_tier
  stg_account_replication_type     = var.stg_account_replication_type
  stg_account_kind                 = var.snpse_pool_stg_account_kind
  dl_name                          = var.snpse_pool_dl_name
  workspace_name                   = var.snpse_pool_workspace_name
  sql_administrator_login          = var.snpse_pool_sql_administrator_login
  sql_administrator_login_password = var.snpse_pool_sql_administrator_login_password
  sql_pool_name                    = var.snpse_pool_sql_name
  sql_sku_name                     = var.snpse_pool_sku_name
  sql_create_mode                  = var.snpse_pool_create_mode
  managed_rg_name                  = var.snpse_pool_managed_rg_name
  account_name                     = var.github_account_name
  branch_name                      = var.github_branch_name
  git_url                          = var.github_url
  snpse_repository_name            = var.snpse_pool_github_repository_name
  root_folder                      = var.github_root_folder
}

module "azure_mssql" {
  source                             = "./azure_sql"
  rg_name                            = module.rg.name
  location                           = module.rg.location
  stg_name                           = var.mssql_stg_name
  stg_account_tier                   = var.stg_account_tier
  stg_account_replication_type       = var.stg_account_replication_type
  dbsrv_name                         = var.mssql_dbsrv_name
  dbsrv_version                      = var.mssql_dbsrv_version
  dbsrv_administrator_login          = var.mssql_dbsrv_administrator_login
  dbsrv_administrator_login_password = var.mssql_dbsrv_administrator_login_password
  db_name                            = var.mssql_db_name
  db_collation                       = var.mssql_db_collation
  db_license_type                    = var.mssql_db_license_type
  db_max_size_gb                     = var.mssql_db_max_size_gb
  db_sku_name                        = var.mssql_db_sku_name
}