provider "azurerm" {
  features {}
}

variable "location" {
  description = "Ubicación de la cuenta de almacenamiento."
  default     = "East US"
}

variable "storage_account_name" {
  description = "Nombre de la cuenta de almacenamiento."
}

resource "azurerm_resource_group" "example" {
  name     = "example-resources"
  location = var.location
}

resource "azurerm_storage_account" "example" {
  name                     = var.storage_account_name
  resource_group_name      = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  tags = {
    environment = "Terraform Demo"
  }
}