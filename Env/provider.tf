terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.85.0"
    }
  }
    backend "azurerm" {
    resource_group_name  = "Jyoti_rg_centralIndia"
    storage_account_name = "terraformtest12346"
    container_name       = "tfstate"
    key                  = "dev.terraform.tfstate"
  }
}

provider "azurerm" {
  features {

  }
}