module "resource_group" {
    source           = "Azure/avm-res-resources-resourcegroup/azurerm"
    version          = "0.2.1"
    location         = var.location
    name             = local.naming_convention.resource_group_name
    tags             = local.tags
    lock             = var.lock
    role_assignments = var.role_assignments
    enable_telemetry = var.enable_telemetry
}