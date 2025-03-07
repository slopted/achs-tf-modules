module "resource_group_example" {
    source            = "../../resource_group"
    location          = var.location
    environment       = var.environment
    cost_center       = var.cost_center
    project           = var.project
    owner             = var.owner
    managed_by        = var.managed_by
    lock              = var.lock
    role_assignments  = var.role_assignments
    enable_telemetry  = var.enable_telemetry
}