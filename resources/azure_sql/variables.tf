variable "rg_name" {
  description = "The name of the RG."
  type        = string
}

variable "location" {
  description = "The location of the RG."
  type        = string
}

variable "stg_name" {
  description = ""
  type        = string
}

variable "stg_account_tier" {
  description = ""
  type        = string
}

variable "stg_account_replication_type" {
  description = ""
  type        = string
}

variable "dbsrv_name" {
  description = ""
  type        = string
}

variable "dbsrv_version" {
  description = ""
  type        = string
}

variable "dbsrv_administrator_login" {
  description = ""
  type        = string
}

variable "dbsrv_administrator_login_password" {
  description = ""
  type        = string
}

variable "db_name" {
  description = ""
  type        = string
}

variable "db_collation" {
  description = ""
  type        = string
}

variable "db_license_type" {
  description = ""
  type        = string
}

variable "db_max_size_gb" {
  description = ""
  type        = number
}

variable "db_sku_name" {
  description = ""
  type        = string
}