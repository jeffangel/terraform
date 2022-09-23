output "object_id" {
  description = "Synapse ID"
  value       = azurerm_synapse_workspace.synapse.identity[0].principal_id
}
