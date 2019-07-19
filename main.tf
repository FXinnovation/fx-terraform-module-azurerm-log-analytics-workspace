resource "azurerm_log_analytics_workspace" "nonfree" {
  count               = var.enabled && var.sku != "free" ? 1 : 0
  name                = var.name
  location            = var.location
  resource_group_name = var.resource_group_name
  sku                 = var.sku
  retention_in_days   = var.retention_in_days

  tags = merge(
    { "Terraform" = "true" },
    var.tags
  )

  timeouts {
    create = "60m"
    delete = "60m"
  }
}

resource "azurerm_log_analytics_workspace" "free" {
  count               = var.enabled && var.sku == "free" ? 1 : 0
  name                = var.name
  location            = var.location
  resource_group_name = var.resource_group_name
  sku                 = var.sku

  tags = merge(
    { "Terraform" = "true" },
    var.tags
  )

  timeouts {
    create = "60m"
    delete = "60m"
  }
}
