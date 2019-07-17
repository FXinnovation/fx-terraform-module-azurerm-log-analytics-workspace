variable "enabled" {
  description = "Enable or not the log analytics workspace."
  default     = true
  type        = bool
}

variable "name" {
  description = "Name of the log analytics workspace."
  type        = string
}

variable "location" {
  description = "Location of the log analytics workspace."
  type        = string
}

variable "resource_group_name" {
  description = "Name of the resource group in which the log analytics workspace will reside."
  type        = string
}

variable "sku" {
  description = "SKU of the log analytics workspace."
  default     = "free"
  type        = string
}

variable "retention_in_days" {
  description = "Retention in days of the log analytics workspace."
  default     = 30
  type        = number
}

variable "tags" {
  description = "Tags to add to the log analytics workspace."
  default     = {}
  type        = map
}
