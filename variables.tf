variable "integration_name" {
    type        = string
    description = "The name of the Genesys Cloud integration."
}

variable "integration_creds_username" {
    type        = string
    sensitive   = true
    description = "The username used for authentication."
}

variable "integration_creds_password" {
    type        = string
    sensitive   = true
    description = "The password used for authentication."
}

variable "integration_creds_org_web_address" {
    type        = string
    description = "The root web address for the organization. Example: https://contoso.crm.dynamics.com."
}

variable "integration_creds_application_id" {
    type        = string
    sensitive   = true
    description = "The Application ID of the Azure Active Directory Application that was created for this integration. See details of how to create an application in documentation."
}