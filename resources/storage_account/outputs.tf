output "primary_blob_connection_string" {
  description = "resource group ID"
  value       = azurerm_storage_account.stg_account.primary_blob_connection_string
}

output "container_name" {
  description = "container name"
  value       = azurerm_storage_container.container.name
}

output "primary_access_key" {
  description = "primary access key"
  value       = azurerm_storage_account.stg_account.primary_access_key
}

output "primary_dfs_endpoint" {
  description = "primary dfs endpoint"
  value       = azurerm_storage_account.stg_account.primary_dfs_endpoint
}