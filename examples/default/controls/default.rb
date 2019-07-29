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
puts input_object('enabled', profile: 'azurerm-resource-group').diagnostic_string
input(
  'name',
  value: input('resource_group_name'),
  profile: 'azurerm-resource-group',
  priority: 45
)
input(
  'enabled',
  value: input('enabled'),
  profile: 'azurerm-resource-group',
  priority: 45
)

include_controls 'azurerm-resource-group'

###
# Log Analytics Workspace Profile
###
include_controls 'azurerm-log-analytics-workspace'
