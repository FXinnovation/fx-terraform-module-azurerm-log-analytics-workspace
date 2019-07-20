#
# inspec_profile::azurerm-log-analytics-workspace
# controls::default
#
# author:cloudsquad@fxinnovation.com
# description: Controls for log-analytics-workspace in Azure
#

###
# Attributes handling
###
resource_group_name  = attribute('resource_group_name')
location             = attribute('location')
name                 = attribute('name')
enabled              = attribute('enabled')

###
# Controls
###
control 'log_analytics-workspace' do
  impact 1.0
  title  'Check the azure log analytics workspace'
  tag    'azurerm'
  tag    'log_analytics_workspace'

  describe azure_generic_resource(group_name: resource_group_name, name: name) do
    it                   { should have_tags }
    its('location')      { should cmp location }
    its('tags')          { should include "Terraform" }
    its('Terraform_tag') { should cmp "true"}
  end if enabled

  describe azure_generic_resource(group_name: resource_group_name, name: name) do
    it { should_not exist }
  end unless enabled
end
