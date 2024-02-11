variable "linuxvm" {
  type = map(object({
    name                = string
    resource_group_name = string
    location            = string
    admin_username      = string
    admin_password      = string
    nicname             = string
  }))

}
