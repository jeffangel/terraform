resource "azurerm_iothub" "iothub" {
  name                = var.name
  resource_group_name = var.rg_name
  location            = var.location

  sku {
    name     = var.sku_name
    capacity = var.sku_capacity
  }

  endpoint {
    type                       = var.endpoint_type
    connection_string          = var.primary_blob_connection_string
    name                       = var.endpoint_name
    batch_frequency_in_seconds = var.endpoint_batch_frequency
    max_chunk_size_in_bytes    = var.endpoint_max_chunk
    container_name             = var.endpoint_container_name
    encoding                   = var.endpoint_encode_name
    file_name_format           = var.endpoint_format
  }

  route {
    name           = var.route_name
    source         = var.route_source
    condition      = var.route_condition
    endpoint_names = var.route_endpoint_names
    enabled        = var.route_enabled
  }

}

resource "azurerm_iothub_route" "route1" {
  resource_group_name = var.rg_name
  iothub_name         = azurerm_iothub.iothub.name
  name                = "ToDefault"

  source         = "DeviceMessages"
  condition      = "true"
  endpoint_names = ["events",]
  enabled        = true
}