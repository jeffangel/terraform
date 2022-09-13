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
stg_container_name           = "container"
stg_container_access_type    = "private"

#IoT Hub
iothub_name                     = "jeariothub1"
iothub_sku_name                 = "F1"
iothub_sku_capacity             = "1"
iothub_endpoint_type            = "AzureIotHub.StorageContainer"
iothub_endpoint_name            = "Export"
iothub_endpoint_batch_frequency = "60"
iothub_endpoint_max_chunk       = "10485760"
iothub_endpoint_encode_name     = "Avro"
iothub_endpoint_format          = "{iothub}/{partition}_{YYYY}_{MM}_{DD}_{HH}_{mm}"
iothub_route_name               = "route1"
iothub_route_source             = "DeviceMessages"
iothub_route_condition          = "true"
iothub_route_endpoint_names     = ["export"]
iothub_route_enabled            = true

#Data factory
adf_name = "adfjean93"
adf_github_account_name    = "jeffangel"
adf_github_branch_name     = "principal"
adf_github_branch_git_url  = "https://github.com"
adf_github_repository_name = "DataFactory"
adf_github_root_folder     = "/"

#Key vault
kv_name                        = "kvjear930219asd1992wl"
kv_sku_name                    = "standard"
kv_adf_certificate_permissions = ["Get", "List", "Backup", "Delete", "Purge", "Recover", "Restore"]
kv_adf_key_permissions         = ["Get", "Backup", "Create", "Decrypt", "Delete", "Encrypt", "Get", "Import", "List", "Purge", "Recover", "Restore", "Sign", "UnwrapKey", "Update", "Verify", "WrapKey"]
kv_adf_secret_permissions      = ["Get", "List", "Set", "Restore", "Recover", "Purge", "Delete", "Backup"]
kv_adf_storage_permissions     = ["Get", "Backup", "Delete", "DeleteSAS", "GetSAS", "List", "ListSAS", "Purge", "Recover", "RegenerateKey", "Restore", "SetSAS", "Set", "Update"]
kv_kvs1_name                   = "primary-access-key"
kv_kvs2_name                   = "primary-dfs-endpoint"
