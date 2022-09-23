variable "name" {
  description = "The name of the storage account."
  type        = string
}

variable "rg_name" {
  description = "The name of the RG."
  type        = string
}

variable "location" {
  description = "The location of the RG."
  type        = string
}

variable "sku_name" {
  description = "The account tier of the stg."
  type        = string
}

variable "admin_users" {
  description = ""
  type        = list
}

variable "enable_power_bi_service" {
  description = ""
  type        = bool
}

