module "rg" {
  source = "../Modules/Resource Group"
  rg     = var.rg
}

module "nic" {
  depends_on = [module.rg]
  source     = "../Modules/NIC"
  nic        = var.nic
}

module "vm" {
  depends_on = [module.nic]
  source     = "../Modules/Linux-VM"
  linuxvm    = var.linuxvm
}

 
