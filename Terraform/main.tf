provider "azurerm" {
    features {}
}

variable "rg_prefix" {
    default = "rg"
}

variable "location" {
    default = "australiasoutheast"
}

resource "random_pet" "rg-name" {
    prefix = var.rg_prefix
}

resource "azurerm_resource_group" "" {
    location = var.location
    name = random_pet.rg-name.id
}

output "resource_group_location" {
    value = azurerm_resource_group.rg.name
}