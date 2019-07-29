#
# inspec_profile::azurerm-log-analytics-workspace-example-default
# controls::default
#
# author::cloudsquad
# description:: Inspec controls for resource group default example
#

###
# Resource Group Profile
###
input(
  'name_prefix',
  value: input('resource_group_name'),
  profile: 'azurerm-resource-group',
  priority: 100
)
input(
  'location',
  value: input('location'),
  profile: 'azurerm-resource-group',
  priority: 100
)
input(
  'enabled',
  value: input('enabled'),
  profile: 'azurerm-resource-group',
  priority: 100
)

include_controls 'azurerm-resource-group'

###
# Log Analytics Workspace Profile
###
include_controls 'azurerm-log-analytics-workspace'
