data "azurerm_client_config" "current" {}

resource "azurerm_key_vault" "kv" {
  name                        = var.name
  location                    = var.location
  resource_group_name         = var.rg_name
  #enabled_for_disk_encryption = true
  tenant_id                   = data.azurerm_client_config.current.tenant_id
  soft_delete_retention_days  = 7
  #purge_protection_enabled    = false
  sku_name                    = var.sku_name

  access_policy {
    tenant_id = data.azurerm_client_config.current.tenant_id
    object_id = data.azurerm_client_config.current.object_id
    
    certificate_permissions = var.certificate_permissions
    key_permissions = var.key_permissions
    secret_permissions = var.secret_permissions
    storage_permissions = var.storage_permissions
  }
}

resource "azurerm_key_vault_access_policy" "accpol_adf" {
  key_vault_id = azurerm_key_vault.kv.id
  tenant_id    = data.azurerm_client_config.current.tenant_id
  object_id    = var.object_id #data.azurerm_client_config.current.object_id

  key_permissions = var.key_permissions
  secret_permissions = var.secret_permissions
}

resource "azurerm_key_vault_secret" "secret1" {
  name         = var.kvs1_name 
  value        = var.kvs1_value
  key_vault_id = azurerm_key_vault.kv.id
}

resource "azurerm_key_vault_secret" "secret2" {
  name         = var.kvs2_name 
  value        = var.kvs2_value
  key_vault_id = azurerm_key_vault.kv.id
}

