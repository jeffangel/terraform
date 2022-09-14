output "primary_blob_connection_string" {
  description = "resource group ID"
  value       = azurerm_storage_account.stg_account.primary_blob_connection_string
}

output "container1_name" {
  description = "container name for raw data"
  value       = azurerm_storage_container.container1.name
}

output "primary_access_key" {
  description = "primary access key"
  value       = azurerm_storage_account.stg_account.primary_access_key
}

output "primary_dfs_endpoint" {
  description = "primary dfs endpoint"
  value       = azurerm_storage_account.stg_account.primary_dfs_endpoint
}