output "id" {
  value = element(
    concat(
      azurerm_log_analytics_workspace.free.*.id,
      azurerm_log_analytics_workspace.nonfree.*.id,
      list("")
    ),
    0
  )
}

output "primary_shared_key" {
  sensitive = true
  value = element(
    concat(
      azurerm_log_analytics_workspace.free.*.primary_shared_key,
      azurerm_log_analytics_workspace.nonfree.*.primary_shared_key,
      list("")
    ),
    0
  )
}

output "secondary_shared_key" {
  sensitive = true
  value = element(
    concat(
      azurerm_log_analytics_workspace.free.*.secondary_shared_key,
      azurerm_log_analytics_workspace.nonfree.*.secondary_shared_key,
      list("")
    ),
    0
  )
}

output "workspace_id" {
  value = element(
    concat(
      azurerm_log_analytics_workspace.free.*.workspace_id,
      azurerm_log_analytics_workspace.nonfree.*.workspace_id,
      list("")
    ),
    0
  )
}

output "portal_url" {
  value = element(
    concat(
      azurerm_log_analytics_workspace.free.*.portal_url,
      azurerm_log_analytics_workspace.nonfree.*.portal_url,
      list("")
    ),
    0
  )
}
