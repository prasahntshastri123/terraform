#defining the ResourceGroup zyptai-S11-dev-rg
resource "azurerm_resource_group" "zyptai-S11-dev-rg"{
    name     = var.resource_group_name
    location = var.location
}


#defining the app service plans that will be created in the resource group

#defining the App Service Plan zyptai-agent-plan
resource "azurerm_service_plan" "zyptai-agent-plan" {
  name = var.app_service_plans.agent.name
  location = var.location
  resource_group_name = var.resource_group_name
  os_type = var.app_service_plans.bot.os_type
  sku_name = var.app_service_plans.bot.sku_name


  depends_on = [ azurerm_resource_group.zyptai-S11-dev-rg ]

}

#defining the App Service Plan zyptai-S11-bot-plan
resource "azurerm_service_plan" "zyptai-s11-bot-plan" {
  name = var.app_service_plans.bot.name
  location = var.location
  resource_group_name = var.resource_group_name
  os_type = var.app_service_plans.bot.os_type
  sku_name = var.app_service_plans.bot.sku_name
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

#defining the App Service Plan zyptai-S11-keyvault-plan
resource "azurerm_service_plan" "zyptai-S11-keyvault-plan" {
  name = var.app_service_plans.keyvault.name
  location = var.location
  resource_group_name = var.resource_group_name
  os_type = var.app_service_plans.bot.os_type
  sku_name = var.app_service_plans.bot.sku_name
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

#defining the App Service Plan zyptai-S11-lucidchart-plan
resource "azurerm_service_plan" "zyptai-S11-lucidchart-plan" {
  name = var.app_service_plans.lucidchart.name
  location = var.location
  resource_group_name = var.resource_group_name
  os_type = var.app_service_plans.lucidchart.os_type
  sku_name = var.app_service_plans.lucidchart.sku_name
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

#defining the App Service Plan zyptai-S11-sharepointindexer-plan
resource "azurerm_service_plan" "zyptai-S11-sharepointindexer-plan" {
  name = var.app_service_plans.sharepoint.name
  location = var.location
  resource_group_name = var.resource_group_name
  os_type = var.app_service_plans.sharepoint.os_type
  sku_name = var.app_service_plans.sharepoint.sku_name
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

#defining the App Service Plan zyptai-S11-webhook-plan
resource "azurerm_service_plan" "zyptai-s11-webhook-plan" {
  name = var.app_service_plans.webhook.name
  location = var.location
  resource_group_name = var.resource_group_name
  os_type = var.app_service_plans.webhook.os_type
  sku_name = var.app_service_plans.webhook.sku_name
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

#defining the App Service Plan zyptai-S11-word-plan
resource "azurerm_service_plan" "zyptai-S11-word-plan" {
  name = var.app_service_plans.word.name
  location = var.location
  resource_group_name = var.resource_group_name
  os_type = var.app_service_plans.word.os_type
  sku_name = var.app_service_plans.word.sku_name


  depends_on = [ azurerm_resource_group.zyptai-S11-dev-rg ]

}

#defining the App Service zyptai-agent
resource "azurerm_linux_web_app" "zyptai-agent" {
  name                = var.app_services.agent.name
  location            = var.location
  resource_group_name = var.resource_group_name
  service_plan_id     = azurerm_service_plan.zyptai-agent-plan.id

  site_config {
 
  }
  identity {
    type = "SystemAssigned"
  }

  depends_on = [ azurerm_service_plan.zyptai-agent-plan, azurerm_resource_group.zyptai-S11-dev-rg ]
}

#defining the App Service zyptai-S11-bot-webapp
resource "azurerm_windows_web_app" "zyptai-s11-bot-webapp090" {
  name                = var.app_services.botwebapp.name
  location            = var.location
  resource_group_name = var.resource_group_name
  service_plan_id     = azurerm_service_plan.zyptai-s11-bot-plan.id

  site_config {
    always_on = true
    application_stack {
      node_version = "~18"
    }
  }
  identity {
    type = "SystemAssigned"
  }
  tags = {
    Application   = "ZyptAI"
    CreatedDate   = "20250208T234525Z"
    DeployedBy    = "Marketplace"
    Environment   = "Dev"
    Organization  = "Test Corporation"
    Product       = "SAP AI Assistant"
  }

  depends_on = [ azurerm_service_plan.zyptai-s11-bot-plan, azurerm_resource_group.zyptai-S11-dev-rg ]
}

#definind the app service zyptai-s11-webhook
resource azurerm_windows_web_app "zyptai-s11-webhook" {
  name                = var.app_services.webhook.name
  location            = var.location
  resource_group_name = var.resource_group_name
  service_plan_id     = azurerm_service_plan.zyptai-s11-webhook-plan.id

  site_config {
    always_on = false
    application_stack {
      node_version = "~20"
    }
  }
  identity {
    type = "SystemAssigned"
  }
    tags = {
    Application   = "ZyptAI"
    CreatedDate   = "20250208T234525Z"
    DeployedBy    = "Marketplace"
    Environment   = "Dev"
    Organization  = "Test Corporation"
    Product       = "SAP AI Assistant"
  }


  depends_on = [ azurerm_service_plan.zyptai-s11-webhook-plan, azurerm_resource_group.zyptai-S11-dev-rg ]
}

#defining the app service zyptai-S11-word01
resource "azurerm_linux_web_app" "zyptai-S11-word" {
  name                = var.app_services.word.name
  location            = var.location
  resource_group_name = var.resource_group_name
  service_plan_id     = azurerm_service_plan.zyptai-S11-word-plan.id

site_config {

}
identity {
    type = "SystemAssigned"
  }

depends_on = [ azurerm_service_plan.zyptai-S11-word-plan, azurerm_resource_group.zyptai-S11-dev-rg ]
}

#defining the Managed Identity zyptai-agent-id-8962
resource "azurerm_user_assigned_identity" "zyptai-agent-id-8962" {
  name                = "zyptai-agent-id-8962"
  location            = var.location
  resource_group_name = var.resource_group_name

  depends_on = [ azurerm_resource_group.zyptai-S11-dev-rg ]
}

#defining the App configuration zyptai-s11-config
resource "azurerm_app_configuration" "zyptai-s11-configdev" {
  name                = "zyptai-s11-configdev"
  resource_group_name = var.resource_group_name
  location            = var.location

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

#defining the Key Vault zyptai-s11-kv 
resource "azurerm_key_vault" "zyptai-s11-kv345" {
  name                        = "zyptai-s11-kv345"
  location                    = var.location
  resource_group_name         = var.resource_group_name
  tenant_id                   = "0f333514-e485-479c-9ff0-0a689ee993a3"
  sku_name                    = "standard"
  soft_delete_retention_days  = 7
  purge_protection_enabled    = false
  enable_rbac_authorization   = true

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



















