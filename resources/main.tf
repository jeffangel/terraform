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

module "stg_acc" {
  source                   = "./storage_account"
  name                     = var.stg_name
  rg_name                  = module.rg.name
  location                 = module.rg.location
  account_tier             = var.stg_account_tier
  account_replication_type = var.stg_account_replication_type
  account_kind             = var.stg_account_kind
  is_hns_enabled           = var.stg_is_hns_enabled
  container_name           = var.stg_container_name
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
  endpoint_container_name        = module.stg_acc.container_name
  endpoint_encode_name           = var.iothub_endpoint_encode_name
  endpoint_format                = var.iothub_endpoint_format
  route_name                     = var.iothub_route_name
  route_source                   = var.iothub_route_source
  route_condition                = var.iothub_route_condition
  route_endpoint_names           = var.iothub_route_endpoint_names
  route_enabled                  = var.iothub_route_enabled
}
/*
module "synapse" {
  source = "./synapse"
}
*/
module "adf" {
  source   = "./data_factory"
  name     = var.adf_name
  rg_name  = module.rg.name
  location = module.rg.location
  account_name    = var.adf_github_account_name
  branch_name     = var.adf_github_branch_name
  branch_git_url  = var.adf_github_branch_git_url
  repository_name = var.adf_github_repository_name
  root_folder     = var.adf_github_root_folder

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