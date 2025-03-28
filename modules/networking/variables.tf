variable "name" {
  type        = string
  description = "Name of the virtual machine."
}

variable "rg_name" {
  type        = string
  description = "Name of the resource group."
}

variable "location" {
  type        = string
  description = "Location of the virtual machine."
}

variable "address_space" {
  type        = string
  description = "value of the address space"
  default     = "10.0.0.0/16"
}

variable "address_prefix" {
  type        = string
  description = "value of the address prefix"
  default     = "10.0.2.0/24"
}