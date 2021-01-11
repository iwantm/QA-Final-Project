resource "azurerm_kubernetes_cluster" "default" {
  name                = "aks_cluster"
  location            = "UK South"
  resource_group_name = var.ResourceGroupName
  dns_prefix          = "k8s"

  default_node_pool {
    name            = "default"
    node_count      = var.instanceAmount
    vm_size         = var.vmsize
    os_disk_size_gb = 30
  }

  identity {
    type = "SystemAssigned"
  }

  role_based_access_control {
    enabled = true
  }

  addon_profile {
    kube_dashboard {
      enabled = true
    }
  }

}