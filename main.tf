# Configure the Azure provider
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0.2"
    }
  }

  required_version = ">= 1.1.0"
  backend "azurerm" {}

}

provider "azurerm" {
  features {}
  skip_provider_registration = true
}



resource "azurerm_resource_group" "rg" {
  name     = "Fitnessgeek-rg"
  location = var.location-rg
  tags = {
    "Application" = "DemoApp"
  }
}


