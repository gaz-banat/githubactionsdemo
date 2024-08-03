terraform {
  # any version of terraform 1.5.x
  required_version = "~> 1.5.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">=3.0.0"
    }
  }
}
