variable "name" {
    type = string
    description = "Name of the virtual machine."
}

variable "rg_name" {
    type = string
    description = "Name of the resource group."
}

variable "location" {
    type = string
    description = "Location of the virtual machine." 
}

variable "size" {
    type = string
    description = "Size of the virtual machine."
}

variable "network_interface_id" {
    type = string
    description = "ID of the network interface to attach to the virtual machine."
}

variable "username" {
    type = string
    description = "Username for SSH access."
    default = "admin"
}

variable "public_key" {
    type = string
    description = "Public key to use for SSH access."
}

variable "storage_sku" {
    type = string
    description = "Storage SKU for the OS disk."
}

variable "os_image" {
    type = map(string)
    description = "OS image to use for the virtual machine."
}