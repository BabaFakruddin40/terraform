terraform {
  backend "azurerm" {
    resource_group_name  = "tfstate-rg"
    storage_account_name = "tfstateaccount1770829975"
    container_name       = "tfstate"
    key                  = "demo.tfstate"
  }
}