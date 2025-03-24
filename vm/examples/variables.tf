variable "location" {
    description = "The location where the resource group will be created."
    type        = string
}

variable "environment" {
    description = "The environment for the resource group."
    type        = string
}

variable "cost_center" {
    description = "The cost center associated with the resource group."
    type        = string
}

variable "project" {
    description = "The project name associated with the resource group."
    type        = string
}

variable "owner" {
    description = "The owner of the resource group."
    type        = string
}

variable "managed_by" {
    description = "The entity managing the resource group."
    type        = string
}

variable "lock" {
    description = "Specifies whether the resource group should be locked."
    type = object({
        kind = string
        name = optional(string, null)
    })
    default = null
}

variable "role_assignments" {
    description = "Role assignments for the resource group."
    type = map(object({
        role_definition_id_or_name             = string
        principal_id                           = string
        description                            = optional(string, null)
        skip_service_principal_aad_check       = optional(bool, false)
        condition                              = optional(string, null)
        condition_version                      = optional(string, null)
        delegated_managed_identity_resource_id = optional(string, null)
        principal_type                         = optional(string, null)
    }))
    default = {}
}

variable "enable_telemetry" {
    description = "Specifies whether telemetry is enabled for the resource group."
    type        = bool
}
