resource "azurerm_network_interface" "NIC" {
  for_each            = var.nic
  name                = each.value.name
  location            = each.value.location
  resource_group_name = each.value.resource_group_name

  ip_configuration {
    name                          = "testconfiguration1"
    subnet_id                     = "/subscriptions/72ccfb48-6c6d-44eb-a988-faa9a1408781/resourceGroups/Jyoti_rg_centralIndia/providers/Microsoft.Network/virtualNetworks/test/subnets/default"
    private_ip_address_allocation = "Dynamic"
  }
}


# output "network_interface_id" {
#   value = azurerm_network_interface.NIC.id
# }