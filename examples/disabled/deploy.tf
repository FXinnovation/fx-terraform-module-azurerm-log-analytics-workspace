module "resource_group" {
  source = "git::ssh://git@github.com/FXinnovation/fx-terraform-module-azurerm-resource-group.git?ref=0.1.0"

  enabled = false

  name     = "terraform-test-workspace-disabled"
  location = "canadacentral"
}

module "default" {
  source = "../../"

  enabled = false

  name                = "terraform-test-workspace-disabled"
  location            = "canadacentral"
  resource_group_name = module.resource_group.name
  sku                 = "free"
}
