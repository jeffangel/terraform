variable "rg_name" {
  description = "Name of the resource group to create."
  type        = string
  default     = "RG_Tesis"
}

variable "location" {
  description = "Location of the resources to create."
  type        = string
  default     = "East US"
}

variable "stg_name" {
  description = "Name of the storage account to create."
  type        = string
}

variable "stg_account_tier" {
  description = "Tier of the storage account to create."
  type        = string
}

variable "stg_account_replication_type" {
  description = "Replication type of the storage account to create."
  type        = string
}

variable "stg_account_kind" {
  description = "Storage account kind of the storage account to create."
  type        = string
}

variable "stg_is_hns_enabled" {
  description = "Status of hns in the storage account to create."
  type        = string
}

variable "stg_container1_name" {
  description = "Name of the container in storage account to create."
  type        = string
}

variable "stg_container2_name" {
  description = "Name of the container in storage account to create."
  type        = string
}

variable "stg_container_access_type" {
  description = "Type of the container in storage account to create."
  type        = string
}

variable "iothub_name" {
  description = ""
  type        = string
}

variable "iothub_sku_name" {
  description = ""
  type        = string
}

variable "iothub_sku_capacity" {
  description = ""
  type        = string
}

variable "iothub_endpoint_type" {
  description = ""
  type        = string
}

variable "iothub_endpoint_name" {
  description = ""
  type        = string
}

variable "iothub_endpoint_batch_frequency" {
  description = ""
  type        = string
}

variable "iothub_endpoint_max_chunk" {
  description = ""
  type        = string
}

variable "iothub_endpoint_encode_name" {
  description = ""
  type        = string
}

variable "iothub_endpoint_format" {
  description = ""
  type        = string
}

variable "iothub_route_name" {
  description = ""
  type        = string
}

variable "iothub_route_source" {
  description = ""
  type        = string
}

variable "iothub_route_condition" {
  description = ""
  type        = string
}

variable "iothub_route_endpoint_names" {
  description = ""
  type        = list(any)
}

variable "iothub_route_enabled" {
  description = ""
  type        = bool
}

variable "adf_name" {
  description = ""
  type        = string
}

variable "github_account_name" {
  description = ""
  type        = string
}

variable "github_branch_name" {
  description = ""
  type        = string
}

variable "github_url" {
  description = ""
  type        = string
}

variable "adf_github_repository_name" {
  description = ""
  type        = string
}

variable "github_root_folder" {
  description = ""
  type        = string
}

variable "kv_name" {
  description = ""
  type        = string
}

variable "kv_sku_name" {
  description = ""
  type        = string
}

variable "kv_adf_certificate_permissions" {
  description = ""
  type        = list(any)
}

variable "kv_adf_key_permissions" {
  description = ""
  type        = list(any)
}

variable "kv_adf_secret_permissions" {
  description = ""
  type        = list(any)
}

variable "kv_adf_storage_permissions" {
  description = ""
  type        = list(any)
}

variable "kv_kvs1_name" {
  description = ""
  type        = string
}

variable "kv_kvs2_name" {
  description = ""
  type        = string
}

variable "snpse_pool_stg_name" {
  description = ""
  type        = string
}

variable "snpse_pool_stg_account_kind" {
  description = ""
  type        = string
}

variable "snpse_pool_dl_name" {
  description = ""
  type        = string
}

variable "snpse_pool_workspace_name" {
  description = ""
  type        = string
}

variable "snpse_pool_sql_administrator_login" {
  description = ""
  type        = string
}

variable "snpse_pool_sql_administrator_login_password" {
  description = ""
  type        = string
}

variable "snpse_pool_managed_rg_name" {
  description = ""
  type        = string
}

variable "snpse_pool_sql_name" {
  description = ""
  type        = string
}

variable "snpse_pool_sku_name" {
  description = ""
  type        = string
}

variable "snpse_pool_create_mode" {
  description = ""
  type        = string
}

variable "snpse_pool_github_repository_name" {
  description = ""
  type        = string
}

variable "mssql_stg_name" {
  description = ""
  type        = string
}

variable "mssql_dbsrv_name" {
  description = ""
  type        = string
}

variable "mssql_dbsrv_version" {
  description = ""
  type        = string
}

variable "mssql_dbsrv_administrator_login" {
  description = ""
  type        = string
}

variable "mssql_dbsrv_administrator_login_password" {
  description = ""
  type        = string
}

variable "mssql_db_name" {
  description = ""
  type        = string
}

variable "mssql_db_collation" {
  description = ""
  type        = string
}

variable "mssql_db_license_type" {
  description = ""
  type        = string
}

variable "mssql_db_max_size_gb" {
  description = ""
  type        = number
}

variable "mssql_db_sku_name" {
  description = ""
  type        = string
}

variable "aas_name" {
  description = ""
  type        = string
}

variable "aas_sku_name" {
  description = ""
  type        = string
}

variable "aas_admin_users" {
  description = ""
  type        = list(any)
}

variable "aas_enable_power_bi_service" {
  description = ""
  type        = bool
}