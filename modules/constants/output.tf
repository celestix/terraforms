output "vm_sizes" {
  value = {
    small  = "Standard_B2s"
    medium = "Standard_D2s_v3"
    large  = "Standard_E4s_v3"
  }
}

output "regions" {
  value = {
    eastus  = "East US"
    westus  = "West US"
    westeu  = "West Europe"
    southeastasia = "Southeast Asia"
  }
}

output "storage_skus" {
  description = "Storage SKU types"
  value = {
    standard = "Standard_LRS"
    premium  = "Premium_LRS"
  }
}

output "os_images" {
  value = {
    ubuntu22 = {
      publisher = "Canonical"
      offer     = "0001-com-ubuntu-server-jammy"
      sku       = "22_04-lts"
      version   = "latest"
    }
    # windows not supported yet
    windows2019 = {
      publisher = "MicrosoftWindowsServer"
      offer     = "WindowsServer"
      sku       = "2019-Datacenter"
      version   = "latest"
    }
  }
}
