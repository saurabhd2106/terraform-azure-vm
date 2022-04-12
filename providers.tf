terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.1.0"
    }
  }

  backend "azurerm" {

    resource_group_name = "tstate"

    # Paste the storage name generate after creating the blob storgae

    storage_account_name = "tstate17235"

    container_name = "tstate"

    key = "terraform.tfstate"

  }
}

provider "azurerm" {
  # Configuration options

  features {
    resource_group {
      prevent_deletion_if_contains_resources = false
    }

  }
}
