resource "azurerm_analysis_services_server" "server" {
  name                    = var.name
  location                 = var.location
  resource_group_name      = var.rg_name  
  sku                     = var.sku_name
  admin_users             = var.admin_users
  enable_power_bi_service = var.enable_power_bi_service

  ipv4_firewall_rule {
    name        = "All"
    range_start = "0.0.0.0"
    range_end   = "255.255.255.255"
  }
}