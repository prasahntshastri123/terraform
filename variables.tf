variable "location" {
  default = "East US"
}

variable "resource_group_name" {
  default = "zyptai-S11-dev-rg"
}

variable "app_service_plans" {
  type = map(object({
    name     = string
    sku_name = string
    os_type  = string
  }))
}

variable "app_services" {
  type = map(object({
    name          = string
    plan_ref      = string
    os_type       = string
    runtime_stack = string
    version       = string
  }))
}

variable "cosmos_account_name" {
  type    = string
  default = "zyptaicosmosaccount"
}

variable "cosmos_databases" {
  type = map(object({
    containers = list(object({
      name                = string
      partition_key_path  = string
    }))
  }))
}

