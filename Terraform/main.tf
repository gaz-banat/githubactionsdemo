provider "azurerm" {
    features {}
}

variable "rg_prefix" {
    default = "rg"
}

variable "location" {
    default = "australiasoutheast"
}

variable "rg-name" {
    type = string
    description = Name of the resource group 
    value = "resourcegroup2"
}

resource "azurerm_resource_group" "rg" {
    location = var.location
    name = var.rg-name
}

output "resource_group_location" {
    value = azurerm_resource_group.rg.name
}