#defining the Log Analytics Workspace for monitoring and logginng
resource "azurerm_log_analytics_workspace" "zyptai-s11-logs" {
  name                = "zyptai-s11-logs"
  location            = var.location
  resource_group_name = var.resource_group_name
  sku                 = "PerGB2018"
  retention_in_days   = 30

  tags = {
    Application   = "ZyptAI"
    CreatedDate   = "20250208T234525Z"
    DeployedBy    = "Marketplace"
    Environment   = "Dev"
    Organization  = "Test Corporation"
    Product       = "SAP AI Assistant"
  }
  depends_on = [ azurerm_resource_group.zyptai-S11-dev-rg ]
}

#defining the Application Insights zyptai-agent
resource "azurerm_application_insights" "zyptai-agent" {
  name                = "zyptai-agent"
  location            = var.location
  resource_group_name = var.resource_group_name
  workspace_id        = azurerm_log_analytics_workspace.zyptai-s11-logs.id
  application_type    = "web"

  depends_on = [ azurerm_log_analytics_workspace.zyptai-s11-logs, azurerm_resource_group.zyptai-S11-dev-rg ]
}


#defining the Application Insights zyptai-S11-insights 
resource "azurerm_application_insights" "zyptai-s11-insights" {
  name                = "zyptai-s11-insights"
  location            = var.location
  resource_group_name = var.resource_group_name
  workspace_id        = azurerm_log_analytics_workspace.zyptai-s11-logs.id
  application_type    = "web"

    tags = {
    Application   = "ZyptAI"
    CreatedDate   = "20250208T234525Z"
    DeployedBy    = "Marketplace"
    Environment   = "Dev"
    Organization  = "Test Corporation"
    Product       = "SAP AI Assistant"
  }

  depends_on = [ azurerm_log_analytics_workspace.zyptai-s11-logs, azurerm_resource_group.zyptai-S11-dev-rg ]
}


#defining the Application Insights zyptai-S11-word
resource "azurerm_application_insights" "zyptai-S11-word" {
  name                = "zyptai-S11-word"
  location            = var.location
  resource_group_name = var.resource_group_name
  workspace_id        = azurerm_log_analytics_workspace.zyptai-s11-logs.id
  application_type    = "web"

  depends_on = [ azurerm_log_analytics_workspace.zyptai-s11-logs, azurerm_resource_group.zyptai-S11-dev-rg ]
}






