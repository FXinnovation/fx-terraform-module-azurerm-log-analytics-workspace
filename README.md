# terraform-module-azurerm-log-analytics-workspace
Terraform module to help deploy a log analyticsworkspace on Azure.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| azurerm | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| enabled | Enable or not the log analytics workspace. | `bool` | `true` | no |
| location | Location of the log analytics workspace. | `string` | n/a | yes |
| name | Name of the log analytics workspace. | `string` | n/a | yes |
| resource\_group\_name | Name of the resource group in which the log analytics workspace will reside. | `string` | n/a | yes |
| retention\_in\_days | Retention in days of the log analytics workspace. | `number` | `30` | no |
| sku | SKU of the log analytics workspace. | `string` | `"free"` | no |
| tags | Tags to add to the log analytics workspace. | `map` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| id | n/a |
| portal\_url | n/a |
| primary\_shared\_key | n/a |
| secondary\_shared\_key | n/a |
| workspace\_id | n/a |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Inspec
This module ships some inspec tests. You can depend on this repository for the inspec tests and load the profile.

## Attributes
| Name | Description |
| ---- | ----------- |
| name | Name of the log analytics workspace. |
| location | Location of the log analytics workspace. |
| resource_group_name | Name of the resource group in which the log analytics workspace resides. |
