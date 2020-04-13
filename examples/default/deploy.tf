module "resource_group" {
  source = "git::ssh://git@scm.dazzlingwrench.fxinnovation.com:2222/fxinnovation-public/terraform-module-azurerm-resource-group.git?ref=1.0.0"

  name     = "terraform-test-workspace-default"
  location = "canadacentral"
}

module "default" {
  source = "../../"

  name                = "terraform-test-workspace-default"
  location            = "canadacentral"
  resource_group_name = module.resource_group.name
  sku                 = "free"
}
