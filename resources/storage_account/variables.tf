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

variable "account_tier" {
  description = "The account tier of the stg."
  type        = string
}

variable "account_replication_type" {
  description = "The account replication type of the stg."
  type        = string
}

variable "account_kind" {
  description = "The account kind of the stg."
  type        = string
}

variable "is_hns_enabled" {
  description = "Is hns enabled the stg?"
  type        = bool
}

variable "container1_name" {
  description = "The name of the container inside the stg."
  type        = string
}

variable "container2_name" {
  description = "The name of the container inside the stg."
  type        = string
}

variable "container_access_type" {
  description = "The container access type of the container inside the stg."
  type        = string
}

