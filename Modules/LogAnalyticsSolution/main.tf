resource "azurerm_log_analytics_solution" "example" {
  solution_name         = "${var.prefix}-SecurityInsights01"
  location              = var.location
  resource_group_name   = var.resource_group_name
  workspace_resource_id = var.azurerm_log_analytics_workspace_id
  workspace_name        = var.azurerm_log_analytics_workspace_name

  plan {
    publisher = "Microsoft"
    product   = "OMSGallery/SecurityInsights"
  }
}