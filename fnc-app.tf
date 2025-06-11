
#storage account and function app for the Azure Function App

#definnig the storage account zyptais11stor
resource "azurerm_storage_account" "zyptais11stor" {
  name                     = "zyptais11stor345"
  resource_group_name      = var.resource_group_name
  location                 = var.location
  account_tier             = "Standard"
  account_kind             = "StorageV2"
  account_replication_type = "LRS"  
  depends_on               = [azurerm_resource_group.zyptai-S11-dev-rg]
   tags = {
    Application   = "ZyptAI"
    CreatedDate   = "20250208T234525Z"
    DeployedBy    = "Marketplace"
    Environment   = "Dev"
    Organization  = "Test Corporation"
    Product       = "SAP AI Assistant"
  }
}

#defining the Function app zyptai-S11-keyvault
resource "azurerm_windows_function_app" "zyptai-S11-keyvault45" {
  name                       = "zyptai-S11-keyvault79dev"
  location                   = var.location
  resource_group_name        = var.resource_group_name
  service_plan_id            = azurerm_service_plan.zyptai-S11-keyvault-plan.id
  storage_account_name       = azurerm_storage_account.zyptais11stor.name
  storage_account_access_key = azurerm_storage_account.zyptais11stor.primary_access_key

  site_config {
    application_stack {
      node_version = "~18"
    }
  }
   tags = {
    Application   = "ZyptAI"
    CreatedDate   = "20250208T234525Z"
    DeployedBy    = "Marketplace"
    Environment   = "Dev"
    Organization  = "Test Corporation"
    Product       = "SAP AI Assistant"
  }
}

#defining the Function app zyptai-S11-lucidchart
resource "azurerm_windows_function_app" "zyptai-S11-lucidchart" {
  name                       = "zyptai-S11-lucidchart79"
  location                   = var.location
  resource_group_name        = var.resource_group_name
  service_plan_id            = azurerm_service_plan.zyptai-S11-lucidchart-plan.id
  storage_account_name       = azurerm_storage_account.zyptais11stor.name
  storage_account_access_key = azurerm_storage_account.zyptais11stor.primary_access_key

  site_config {
    application_stack {
      node_version = "~18"
    }
  }
   tags = {
    Application   = "ZyptAI"
    CreatedDate   = "20250208T234525Z"
    DeployedBy    = "Marketplace"
    Environment   = "Dev"
    Organization  = "Test Corporation"
    Product       = "SAP AI Assistant"
  }
}

#defining the Function app zyptai-S11-sharepointindexer
resource "azurerm_windows_function_app" "zyptai-S11-sharepointindexer" {
  name                       = "zyptai-S11-sharepointindexer79"
  location                   = var.location
  resource_group_name        = var.resource_group_name
  service_plan_id            = azurerm_service_plan.zyptai-S11-sharepointindexer-plan.id
  storage_account_name       = azurerm_storage_account.zyptais11stor.name
  storage_account_access_key = azurerm_storage_account.zyptais11stor.primary_access_key

  site_config {
    application_stack {
      node_version = "~18"
    }
  }
   tags = {
    Application   = "ZyptAI"
    CreatedDate   = "20250208T234525Z"
    DeployedBy    = "Marketplace"
    Environment   = "Dev"
    Organization  = "Test Corporation"
    Product       = "SAP AI Assistant"
  }
}


