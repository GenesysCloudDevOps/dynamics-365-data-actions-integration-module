resource "genesyscloud_integration" "integration" {
    integration_type = "microsoft-dynamics-data-actions"
    intended_state   = "ENABLED"

    config {
        name  = var.integration_name
        credentials = {
            msDynamics = genesyscloud_integration_credential.credential.id
        }
    }
}

resource "genesyscloud_integration_credential" "credential" {
    name                 = "Microsoft Dynamics 365 Credentials"
    credential_type_name = "msDynamics"

    fields = {
        username      = var.integration_creds_username
        password      = var.integration_creds_password
        orgWebAddress = var.integration_creds_org_web_address
        applicationId = var.integration_creds_application_id
    }
}