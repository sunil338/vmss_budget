variable "subscription_id" {
  type = string
}

variable "resource_group" {
  type = string
}

variable "vmss_name" {
  type = string
}

variable "budget_name" {
  type    = string
  default = "vmss-budget"
}

variable "budget_amount" {
  type    = number
  default = 50
}

variable "time_grain" {
  type    = string
  default = "Monthly"
}
