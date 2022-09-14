variable "stg_name" {
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

variable "stg_account_tier" {
  description = "The account tier of the stg."
  type        = string
}

variable "stg_account_replication_type" {
  description = "The account replication type of the stg."
  type        = string
}

variable "stg_account_kind" {
  description = "The account kind of the stg."
  type        = string
}

variable "dl_name" {
  description = ""
  type        = string
}

variable "workspace_name" {
  description = ""
  type        = string
}

variable "sql_administrator_login" {
  description = ""
  type        = string
}

variable "sql_administrator_login_password" {
  description = ""
  type        = string
}

variable "managed_rg_name" {
  description = ""
  type        = string
}

variable "account_name" {
  description = ""
  type        = string
}

variable "branch_name" {
  description = ""
  type        = string
}

variable "git_url" {
  description = ""
  type        = string
}

variable "snpse_repository_name" {
  description = ""
  type        = string
}

variable "root_folder" {
  description = ""
  type        = string
}

variable "sql_pool_name" {
  description = ""
  type        = string
}

variable "sql_sku_name" {
  description = ""
  type        = string
}

variable "sql_create_mode" {
  description = ""
  type        = string
}

