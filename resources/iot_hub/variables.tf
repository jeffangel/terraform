
variable "rg_name" {
  description = "The name of the RG."
  type        = string
}

variable "location" {
  description = "The location of the RG."
  type        = string
}

variable "name" {
  description = "The name of the iot hub."
  type        = string
}

variable "sku_name" {
  description = "The name of the sku for iot hub."
  type        = string
}

variable "sku_capacity" {
  description = "The name of the sku for iot hub."
  type        = number
}

variable "endpoint_type" {
  description = "The type of the endpoint in iot hub."
  type        = string
}

variable "primary_blob_connection_string" {
  description = ""
  type        = string
}

variable "endpoint_container_name" {
  description = ""
  type        = string
}

variable "endpoint_name" {
  description = "The name of the type for the endpoint in iot hub."
  type        = string
}

variable "endpoint_batch_frequency" {
  description = "The batch frequency for the endpoint in iot hub."
  type        = number
}

variable "endpoint_max_chunk" {
  description = "The max chunk size for the endpoint in iot hub."
  type        = number
}

variable "endpoint_encode_name" {
  description = "The name of encode type for the endpoint in iot hub."
  type        = string
}

variable "endpoint_format" {
  description = ""
  type        = string
}

variable "route_name" {
  description = ""
  type        = string
}

variable "route_source" {
  description = ""
  type        = string
}

variable "route_condition" {
  description = ""
  type        = string
}

variable "route_endpoint_names" {
  description = ""
  type        = list
}

variable "route_enabled" {
  description = ""
  type        = string
}