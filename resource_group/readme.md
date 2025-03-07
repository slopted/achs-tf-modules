# Resource Group Module

This module is used to create an Azure Resource Group.

## Providers

| Name   | Version |
|--------|---------|
| `azurerm` | >= 2.0 |

This module requires the `azurerm` provider to interact with Azure resources. Ensure you have the provider configured in your Terraform project.

## Module Source

The source for this module can be found on GitHub at the following location:

[achs-tf-modules/resource_group](https://github.com/your-repo/achs-tf-modules/resource_group)

You can include this module in your Terraform configuration using the following source address:

```hcl
source = "github.com/your-repo/achs-tf-modules/resource_group"
```

## Usage
This module can be used to create a resource group in Azure. Below is an example of how to use this module in your Terraform configuration:


```hcl
module "resource_group" {
    source              = "github.com/your-repo/achs-tf-modules/resource_group"
    resource_group_name = "example-resources"
    location            = "West Europe"
}
```

## Inputs
| Name                        | Description                                                                                                                   | Type   | Default | Required |
|-----------------------------|-------------------------------------------------------------------------------------------------------------------------------|--------|---------|----------|
| `prefix`                    | The prefix for naming convention                                                                                              | string | "rg"    | Yes      |
| `environment`               | The environment for the resources. Must be one of 'prod', 'dev', 'test', or 'poc'.                                            | string | N/A     | Yes      |
| `cost_center`               | The cost center for the resources                                                                                             | string | N/A     | No       |
| `project`                   | The project name for the resources                                                                                            | string | N/A     | No       |
| `owner`                     | The owner of the resources                                                                                                    | string | N/A     | No       |
| `managed_by`                | The entity managing the resources                                                                                             | string | N/A     | No       |
| `location`                  | Required. The Azure region for deployment of this resource.                                                                   | string | N/A     | Yes      |
| `enable_telemetry`          | Controls whether or not telemetry is enabled for the module. If set to false, no telemetry will be collected.                 | bool   | true    | No       |
| `lock`                      | Controls the Resource Lock configuration for this resource.                                                                   | object | null    | No       |
| `role_assignments`          | A map of role assignments to create on this resource.                                                                         | map    | {}      | Yes      |

## Outputs

| Name              | Description                         |
|-------------------|-------------------------------------|
| `name`              | The name of the resource group      |
| `resource`          | This is the full output for the resource group. |
| `resource_id`      | The resource Id of the resource group |