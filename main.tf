resource "azurerm_log_analytics_workspace" "nonfree" {
  count               = var.enabled == false && var.sku != "free" ? 0 : 1
  name                = var.name
  location            = var.location
  resource_group_name = var.resource_group_name
  sku                 = var.sku
  retention_in_days   = var.retention_in_days

  tags = merge(
    { "Terraform" = "true" },
    var.tags
  )
}

resource "azurerm_log_analytics_workspace" "free" {
  count               = var.enabled == false && var.sku == "free" ? 0 : 1
  name                = var.name
  location            = var.location
  resource_group_name = var.resource_group_name
  sku                 = var.sku

  tags = merge(
    { "Terraform" = "true" },
    var.tags
  )
}
