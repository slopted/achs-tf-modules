locals {
    naming_convention = {
        prefix               = var.prefix
        environment          = var.environment
        location             = var.location
        resource_group_name  = "${var.prefix}-${var.environment}-${var.location}-rg"
    }
    tags = {
        environment  = var.environment
        location     = var.location
        cost_center  = var.cost_center
        project      = var.project
        owner        = var.owner
        managed_by   = var.managed_by
    }
}



