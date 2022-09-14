#Region for all resources
location = "East Us"

#Resource Group
rg_name = "RG_Proyecto"

#Storage account
stg_name                     = "stgdtlkg2iotjean93"
stg_account_tier             = "Standard"
stg_account_replication_type = "LRS"
stg_account_kind             = "StorageV2"
stg_is_hns_enabled           = "true"
stg_container1_name          = "landing"
stg_container2_name          = "staging"
stg_container_access_type    = "private"

#IoT Hub
iothub_name                     = "jeariothub1"
iothub_sku_name                 = "F1"
iothub_sku_capacity             = "1"
iothub_endpoint_type            = "AzureIotHub.StorageContainer"
iothub_endpoint_name            = "Export"
iothub_endpoint_batch_frequency = "60"
iothub_endpoint_max_chunk       = "10485760"
iothub_endpoint_encode_name     = "JSON"
iothub_endpoint_format          = "{iothub}/{partition}/{YYYY}/{MM}/{DD}/{HH}_{mm}.json"
iothub_route_name               = "route1"
iothub_route_source             = "DeviceMessages"
iothub_route_condition          = "true"
iothub_route_endpoint_names     = ["Export"]
iothub_route_enabled            = true

#Data factory
adf_name                   = "adfjean93"
github_account_name        = "jeffangel"
github_branch_name         = "principal"
github_url                 = "https://github.com"
adf_github_repository_name = "DataFactory"
github_root_folder         = "/"

#Key vault
kv_name                        = "kvjear930219asd1992wl"
kv_sku_name                    = "standard"
kv_adf_certificate_permissions = ["Get", "List", "Backup", "Delete", "Purge", "Recover", "Restore"]
kv_adf_key_permissions         = ["Get", "Backup", "Create", "Decrypt", "Delete", "Encrypt", "Get", "Import", "List", "Purge", "Recover", "Restore", "Sign", "UnwrapKey", "Update", "Verify", "WrapKey"]
kv_adf_secret_permissions      = ["Get", "List", "Set", "Restore", "Recover", "Purge", "Delete", "Backup"]
kv_adf_storage_permissions     = ["Get", "Backup", "Delete", "DeleteSAS", "GetSAS", "List", "ListSAS", "Purge", "Recover", "RegenerateKey", "Restore", "SetSAS", "Set", "Update"]
kv_kvs1_name                   = "primary-access-key"
kv_kvs2_name                   = "primary-dfs-endpoint"

#Synapse Pool
snpse_pool_stg_name                         = "snpsestgjean93"
snpse_pool_stg_account_kind                 = "BlobStorage"
snpse_pool_dl_name                          = "snpsestgdljean93"
snpse_pool_workspace_name                   = "synapsejean93"
snpse_pool_sql_administrator_login          = "sqladmin"
snpse_pool_sql_administrator_login_password = "B3lcorp2018$"
snpse_pool_managed_rg_name                  = "RG_Synapse_MNGD"
snpse_pool_sql_name                         = "sqlpoolthesjean93"
snpse_pool_sku_name                         = "DW100c"
snpse_pool_create_mode                      = "Default"
snpse_pool_github_repository_name           = "Synapse"

#Azure MSSQL
mssql_stg_name                           = "stgdbjear93"
mssql_dbsrv_name                         = "mssqldbsrvjear93"
mssql_dbsrv_version                      = "12.0"
mssql_dbsrv_administrator_login          = "sqladmin"
mssql_dbsrv_administrator_login_password = "B3lcorp2018$"
mssql_db_name                            = "registros"
mssql_db_collation                       = "SQL_Latin1_General_CP1_CI_AS"
mssql_db_license_type                    = "LicenseIncluded"
mssql_db_max_size_gb                     = 4
mssql_db_sku_name                        = "S0"






