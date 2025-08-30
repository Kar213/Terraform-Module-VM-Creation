terraform {
  required_version = ">= 1.3.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.100" # any 3.x is fine
    }
  }
}

provider "azurerm" {
  features {}
  # Terraform will use your Azure CLI login (az login)
}
