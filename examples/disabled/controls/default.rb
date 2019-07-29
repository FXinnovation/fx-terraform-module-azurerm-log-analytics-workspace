#
# inspec_profile::azurerm-log-analytics-workspace-example-disabled
# controls::default
#
# author::cloudsquad
# description:: Inspec controls for resource group disabled example
#

###
# Resource Group Profile
###
# Pending outcome of https://github.com/inspec/inspec/issues/4338
# input(
#   'name',
#   value: input('resource_group_name'),
#   profile: 'azurerm-resource-group',
#   priority: 45
# )
# input(
#   'enabled',
#   value: input('enabled'),
#   profile: 'azurerm-resource-group',
#   priority: 45
# )

include_controls 'azurerm-resource-group'

###
# Log Analytics Workspace Profile
###
include_controls 'azurerm-log-analytics-workspace'
