output "object_id" {
  description = "ADF ID"
  value       = azurerm_data_factory.adf.identity[0].principal_id
}
