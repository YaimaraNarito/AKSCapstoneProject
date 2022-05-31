terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
}
provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = "aks-rg3"
  location = "centralus"
}

resource "azurerm_kubernetes_cluster" "cluster" {
  name                = "aks-cluster"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  dns_prefix          = "akscluster"

  default_node_pool {
    name       = "default"
    node_count = "1"
    vm_size    = "standard_D2s_v3"
  }

  identity {
    type = "SystemAssigned"
  }
}
