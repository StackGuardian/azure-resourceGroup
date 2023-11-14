resource "random_pet" "random" {
  length = 2
}

locals {
    resource_group_name = "${random_pet.random.id}"
}

resource "azurerm_resource_group" "main" {
  name     = "custom-name-1"
  location = var.location
  tags = {
    app         = var.app
    environment = var.environment
    creator     = var.creator
  }
}