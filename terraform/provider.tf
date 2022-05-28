provider "azurerm" {
  use_oidc = true
  skip_provider_registration = true
  features {}
}

provider "random" {}

provider "null" {}

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }
}