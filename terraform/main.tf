terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.75.0"
    }
  }
}

provider "azurerm" {
    features {

    }
}

resource "azurerm_resource_group" "aks_rg" {
    name = "aks_resource_group"
    location = "West Europe"
}

resource "azurerm_kubernetes_cluster" "aks_cluster" {
    name = "aks_cluster"
    location = azurerm_resource_group.aks_rg.location
    resource_group_name = azurerm_resource_group.aks_rg.name
    dns_prefix = "akscluster"
    default_node_pool {
        name = "default"
        node_count = 1
        vm_size = "Standard_D2_V2"
    }

    identity {
       type = "SystemAssigned"
    }

    tags = {
      Environment = "Development"
    }
}

output "client_certificate" {
    value = azurerm_kubernetes_cluster.aks_cluster.kube_config.0.client_certificate
    sensitive = true
}
