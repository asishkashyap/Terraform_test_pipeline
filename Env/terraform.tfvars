rg = {
  rg1 = {
    name     = "Todoapp-rg"
    location = "Central India"
  },
  # rg2 = {
  #   name     = "Test-rg"
  #   location = "Central India"
  # }
}


subnet = {
  subnet1 = {
    name                 = "Frontend"
    resource_group_name  = "Todoapp-rg"
    virtual_network_name = "Todo-vnet"
    address_prefixes     = ["10.0.0.0/24"]
  },

  subnet2 = {
    name                 = "Backend"
    resource_group_name  = "Todoapp-rg"
    virtual_network_name = "Todo-vnet"
    address_prefixes     = ["10.0.1.0/24"]
  }
}


nic = {
  nic1 = {
    name                 = "f-nic"
    location             = "Central India"
    resource_group_name  = "Todoapp-rg"
    subnet_id            = "/subscriptions/72ccfb48-6c6d-44eb-a988-faa9a1408781/resourceGroups/Jyoti_rg_centralIndia/providers/Microsoft.Network/virtualNetworks/test/subnets/default"
    # public_ip_address_id = "/subscriptions/72ccfb48-6c6d-44eb-a988-faa9a1408781/resourceGroups/Jyoti_rg_centralIndia/providers/Microsoft.Network/publicIPAddresses/test-pip"
  }
  nic2 = {
    name                 = "B-nic"
    location             = "Central India"
    resource_group_name  = "Todoapp-rg"
    subnet_id            = "/subscriptions/72ccfb48-6c6d-44eb-a988-faa9a1408781/resourceGroups/Jyoti_rg_centralIndia/providers/Microsoft.Network/virtualNetworks/test/subnets/default"
    # public_ip_address_id = "/subscriptions/72ccfb48-6c6d-44eb-a988-faa9a1408781/resourceGroups/Todoapp-rg/providers/Microsoft.Network/publicIPAddresses/TodoB-PIP"
  }
}


linuxvm = {
  VM1 = {
    name                = "Frontend-VM"
    resource_group_name = "Todoapp-rg"
    location            = "Central India"
    admin_username      = "admin01"
    admin_password      = "admin@123456"
    nicname             = "f-nic"

   },

   VM2 = {
     name                = "Backend-VM"
     resource_group_name = "Todoapp-rg"
     location            = "Central India"
     admin_username      = "admin01"
     admin_password      = "admin@123456"
     nicname             = "B-nic"

   }
}


