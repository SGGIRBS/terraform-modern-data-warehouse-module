variable "service_short_name" {
  default     = "DW"
  description = "This can be your project or service name. ERP, DW etc"
}
variable "environment_short_name" {
  default = "Dev"
  description = "Prod, Dev, UAT etc"
}
variable "location" {
  default = "West Europe"
}
variable "common_tags" {
  type = map
  description = "Can be used to feed platform wide tags from a wider terraform deployment"
  default = {
    ManagedBy = "Terraform"
    Owner = "Cloud Ops"
  }
}
variable "solution_tags" {
  type = map
  description = "Allows solution specific tags to be set that are merged with 'common_tags'"
  default = {
    CostCentre = "Data Analytics"
  }
}
variable "security_admins_group_id" {
  description = "REQUIRED - Object ID of principal (should be group) of a security group for full permissions to Key Vault secrets"
}
variable "azuread_sql_admin_group_id" {
  description = "REQUIRED - Object ID of principal (should be group) of an Azure AD SQL administrators group"
}
variable "sql-admin-username" {
  description = "REQUIRED - SA username for intial setup of Azure SQL server"
}
variable "sql-admin-password" {
  description = "REQUIRED - SA password for intial setup of Azure SQL server"
}
variable "tenant-id" {
  description = "REQUIRED - Azure Directory ID"
}
variable "notificationemailaddress"{
  description = "REQUIRED - Email address for notifications"
}