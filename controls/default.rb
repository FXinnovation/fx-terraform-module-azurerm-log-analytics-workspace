#
# inspec_profile::azurerm-log-analytics-workspace
# controls::default
#
# author:cloudsquad@fxinnovation.com
# description: Controls for resource groups in Azure
#

###
# Attributes handling
###
resource_group_name  = attribute('resource_group_name')
location             = attribute('location')
name                 = attribute('name')

###
# Controls
###
control 'log_analytic-workspace' do
  impact 1.0
  title  'Check the azure log analytic workspace'
  tag    'azurerm'
  tag    'log_analytic_workspace'

  describe azure_generic_resource(group_name: resource_group_name, name: name) do
    it              { should exist }
    it              { should have_tags }
    its('location') { should cmp location }
  end
end