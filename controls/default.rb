#
# inspec_profile::azurerm-log-analytics-workspace
# controls::default
#
# author:cloudsquad@fxinnovation.com
# description: Controls for log-analytics-workspace in Azure
#

###
# Controls
###
control 'log_analytics-workspace' do
  impact 1.0
  title  'Check the azure log analytics workspace'
  tag    'azurerm'
  tag    'log_analytics_workspace'

  only_if('module is disabled') do
    input('enabled')
  end

  describe azure_generic_resource(
    group_name: input('resource_group_name'),
    name: input('name')
  ) do
    it                   { should have_tags }
    its('location')      { should cmp input('location') }
    its('tags')          { should include "Terraform" }
    its('Terraform_tag') { should cmp "true"}
  end
end