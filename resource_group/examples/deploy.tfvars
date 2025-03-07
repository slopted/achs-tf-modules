location      = "eastus"
environment   = "dev"
cost_center   = "cs-12345"
project       = "ACHS Terraform"
owner         = "ACHS IT"
managed_by    = "ACHS IT"
lock = {
    kind = "CanNotDelete"
    name = "Lock_delete"
}
role_assignments = {
    "role_assignment1" = {
        role_definition_id_or_name = "Reader"
        principal_id = "4179302c-702e-4de7-a061-beacd0a1be09"
    }
}
enable_telemetry = true