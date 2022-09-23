variable "name" {
  description = "The name of the kv."
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
  description = ""
  type        = string
}

variable "certificate_permissions" {
  description = ""
  type        = list
}

variable "key_permissions" {
  description = ""
  type        = list
}

variable "secret_permissions" {
  description = ""
  type        = list
}

variable "storage_permissions" {
  description = ""
  type        = list
}

variable "object_id" {
  description = ""
  type        = string
}

variable "object_id_tmp" {
  description = ""
  type        = string
}

variable "kvs1_name" {
  description = ""
  type        = string
}

variable "kvs1_value" {
  description = ""
  type        = string
}

variable "kvs2_name" {
  description = ""
  type        = string
}

variable "kvs2_value" {
  description = ""
  type        = string
}
