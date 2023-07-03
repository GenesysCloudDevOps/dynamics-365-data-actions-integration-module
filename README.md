Sets up a Dynamics 365 integration using CX as Code and Terraform remote modules

## Usage

Shown below is an example of how to configure the remote module.

```hcl
module "integration" {
    source = "git::https://github.com/GenesysCloudDevOps/dynamics-365-data-actions-integration-module.git?ref=v1.0.0"

    integration_name                  = "Dynamics 365 Integration"
    integration_creds_username        = "<username>"
    integration_creds_password        = "<password>"
    integration_creds_org_web_address = "https://example.domain.dynamics.com"
    integration_creds_application_id  = "<application ID>"
}
```

## Requirements

| Name | Version |
|------|---------|
| <a name="provider_terraform"></a>[terraform](https://www.terraform.io/) | >= 1.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_genesyscloud"></a> [genesyscloud](https://registry.terraform.io/providers/MyPureCloud/genesyscloud/latest) | >= 1.0|

## Inputs

| Name | Description | Type | Required |
|------|-------------|------|:--------:|
| <a name="integration_name"></a> [integration_name](#integration\_\name)  | The integration name. | `string` | yes |
| <a name="integration_creds_username"></a> [integration_creds_username](#integration\_\creds\_\username)  | The username used for authentication. | `string` | yes |
| <a name="integration_creds_password"></a> [integration_creds_password](#integration\_\creds\_\password)  | The password used for authentication. | `string` | yes |
| <a name="integration_creds_org_web_address"></a> [integration_creds_org_web_address](#integration\_\creds\_\org\_\web\_\address)  | The root web address for the organization. Example: https://contoso.crm.dynamics.com. | `string` | yes |
| <a name="integration_creds_application_id"></a> [integration_creds_application_id](#integration\_\creds\_\application\_\id)  | The Application ID of the Azure Active Directory Application that was created for this integration. See details of how to create an application in documentation. | `string` | yes |

## Outputs

| Name | Description | Type | 
|------|-------------|------|
| <a name="integration_id"></a> [integration_id](#integration\_\id)  | The ID of the integration. | `string` |
| <a name="integration_name"></a> [integration_name](#integration\_\name)  | The name of the integration. | `string` | 