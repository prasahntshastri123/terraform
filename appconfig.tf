#defining the App insights connection string for the App Configuration
resource "azurerm_app_configuration_key" "APP_INSIGHTS_CONNECTION_STRING" {
  configuration_store_id = azurerm_app_configuration.zyptai-s11-configdev.id
  key                    = "APP_INSIGHTS_CONNECTION_STRING"
  value                  = "InstrumentationKey=cce9a042-2561-467f-8c65-1ba7093a9b37;IngestionEndpoint=https://eastus-8.in.applicationinsights.azure.com/;LiveEndpoint=https://eastus.livediagnostics.monitor.azure.com/;ApplicationId=be4c32b2-6999-41c2-8248-d662761839c0"
}


#defining the App insights instrumentation key for the App Configuration
resource "azurerm_app_configuration_key" "APP_INSIGHTS_INSTRUMENTATION_KEY" {
  configuration_store_id = azurerm_app_configuration.zyptai-s11-configdev.id
  key                    = "APP_INSIGHTS_INSTRUMENTATION_KEY"
  value                  = "cce9a042-2561-467f-8c65-1ba7093a9b37"

  depends_on = [ azurerm_app_configuration.zyptai-s11-configdev ]
}

#defining the ad backend app id for the App Configuration
resource "azurerm_app_configuration_key" "AZURE_AD_BACKEND_APP_ID" {
  configuration_store_id = azurerm_app_configuration.zyptai-s11-configdev.id
  key                    = "AZURE_AD_BACKEND_APP_ID"
  value                  = "d200ab99-c863-448d-8a8d-a0a97f82f3f4"

  depends_on = [ azurerm_app_configuration.zyptai-s11-configdev ]
}

#defining the ad client id for the App Configuration
resource "azurerm_app_configuration_key" "AZURE_AD_CLIENT_ID" {
  configuration_store_id = azurerm_app_configuration.zyptai-s11-configdev.id
  key                    = "AZURE_AD_CLIENT_ID"
  value                  = "db1fcb39-0c52-4f0f-8711-831da60e1b3f"

  depends_on = [ azurerm_app_configuration.zyptai-s11-configdev ]
}


#defining the ad tenant id for the App Configuration
resource "azurerm_app_configuration_key" "AZURE_AD_TENANT_ID" {
  configuration_store_id = azurerm_app_configuration.zyptai-s11-configdev.id
  key                    = "AZURE_AD_TENANT_ID"
  value                  = "0f333514-e485-479c-9ff0-0a689ee993a3"

  depends_on = [ azurerm_app_configuration.zyptai-s11-configdev ]
}

#defining the appconfig endpoint for the App Configuration
resource "azurerm_app_configuration_key" "AZURE_APPCONFIG_ENDPOINT" {
  configuration_store_id = azurerm_app_configuration.zyptai-s11-configdev.id
  key                    = "AZURE_APPCONFIG_ENDPOINT"
  value                  = "https://zyptai-s11-config.azconfig.io"

  depends_on = [ azurerm_app_configuration.zyptai-s11-configdev ]
}

#defining the Appp function url for the App Configuration
resource "azurerm_app_configuration_key" "AZURE_FUNCTION_URL" {
  configuration_store_id = azurerm_app_configuration.zyptai-s11-configdev.id
  key                    = "AZURE_FUNCTION_URL"
  value                  = "https://zyptai-s11-lucidchart.azurewebsites.net/api/lucidchart"

  depends_on = [ azurerm_app_configuration.zyptai-s11-configdev ]
}

#defining the openai completions deployment for the App Configuration
resource "azurerm_app_configuration_key" "OPENAI_COMPLETIONS_DEPLOYMENT" {
  configuration_store_id = azurerm_app_configuration.zyptai-s11-configdev.id
  key                    = "OPENAI_COMPLETIONS_DEPLOYMENT"
  value                  = "gpt-4.1"

  depends_on = [ azurerm_app_configuration.zyptai-s11-configdev ]
}


#defining the AZURE_OPENAI_DEPLOYMENT_NAME for the App Configuration
resource "azurerm_app_configuration_key" "AZURE_OPENAI_DEPLOYMENT_NAME" {
  configuration_store_id = azurerm_app_configuration.zyptai-s11-configdev.id
  key                    = "AZURE_OPENAI_DEPLOYMENT_NAME"
  value                  = "gpt-4.1"

  depends_on = [ azurerm_app_configuration.zyptai-s11-configdev ]
}

#defining the AZURE_OPENAI_EMBEDDING_DEPLOYMENT for the App Configuration
resource "azurerm_app_configuration_key" "AZURE_OPENAI_EMBEDDING_DEPLOYMENT" {
  configuration_store_id = azurerm_app_configuration.zyptai-s11-configdev.id
  key                    = "AZURE_OPENAI_EMBEDDING_DEPLOYMENT"
  value                  = "text-embedding-3-small"

  depends_on = [ azurerm_app_configuration.zyptai-s11-configdev ]
}

#defining the AZURE_OPENAI_EMBEDDING_DEPLOYMENT_NAME for the App Configuration
resource "azurerm_app_configuration_key" "AZURE_OPENAI_EMBEDDING_DEPLOYMENT_NAME" {
  configuration_store_id = azurerm_app_configuration.zyptai-s11-configdev.id
  key                    = "AZURE_OPENAI_EMBEDDING_DEPLOYMENT_NAME"
  value                  = "text-embedding-3-small"

  depends_on = [ azurerm_app_configuration.zyptai-s11-configdev ]
}

#defining the AZURE_OPENAI_ENDPOINT for the App Configuration
resource "azurerm_app_configuration_key" "AZURE_OPENAI_ENDPOINT" {
  configuration_store_id = azurerm_app_configuration.zyptai-s11-configdev.id
  key                    = "AZURE_OPENAI_ENDPOINT"
  value                  = "https://zyptaigpt41.openai.azure.com/"

  depends_on = [ azurerm_app_configuration.zyptai-s11-configdev ]
}


#defining the AZURE_SEARCH_ENDPOINT for the App Configuration
resource "azurerm_app_configuration_key" "AZURE_SEARCH_ENDPOINT" {
  configuration_store_id = azurerm_app_configuration.zyptai-s11-configdev.id
  key                    = "AZURE_SEARCH_ENDPOINT"
  value                  = "https://zyptai-s11-search.search.windows.net"

  depends_on = [ azurerm_app_configuration.zyptai-s11-configdev ]
}

#defining the AZURE_STORAGE_ACCOUNT for the App Configuration
resource "azurerm_app_configuration_key" "AZURE_STORAGE_ACCOUNT" {
  configuration_store_id = azurerm_app_configuration.zyptai-s11-configdev.id
  key                    = "AZURE_STORAGE_ACCOUNT"
  value                  = "zyptais11stor"

  depends_on = [ azurerm_app_configuration.zyptai-s11-configdev ]
}

#defining the AZURE_STORAGE_BLOB_ENDPOINT for the App Configuration
resource "azurerm_app_configuration_key" "AZURE_STORAGE_BLOB_ENDPOINT" {
  configuration_store_id = azurerm_app_configuration.zyptai-s11-configdev.id
  key                    = "AZURE_STORAGE_BLOB_ENDPOINT"
  value                  = "https://zyptais11stor.blob.core.windows.net/"

  depends_on = [ azurerm_app_configuration.zyptai-s11-configdev ]
}

#defining the AZURE_STORAGE_CONNECTION_STRING for the App Configuration
resource "azurerm_app_configuration_key" "AZURE_STORAGE_CONNECTION_STRING" {
  configuration_store_id = azurerm_app_configuration.zyptai-s11-configdev.id
  key                    = "AZURE_STORAGE_CONNECTION_STRING"
  value                  = "DefaultEndpointsProtocol=https;AccountName=zyptais11stor;AccountKey=sPHIq95BQA+70Tn3sPQhIw9bOAMRbv+pyzPpiajqjgrJ5neztjKrbnpMfSTsIcxXE00yAfiRRtFs+AStdx60Zw==;EndpointSuffix=core.windows.net"

  depends_on = [ azurerm_app_configuration.zyptai-s11-configdev ]
}

#defining the BACKEND_API_REQUIRED_SCOPE for the App Configuration
resource "azurerm_app_configuration_key" "BACKEND_API_REQUIRED_SCOPE" {
  configuration_store_id = azurerm_app_configuration.zyptai-s11-configdev.id
  key                    = "BACKEND_API_REQUIRED_SCOPE"
  value                  = "Tasks.Process"

  depends_on = [ azurerm_app_configuration.zyptai-s11-configdev ]
}

#defining the BOT_ID for the App Configuration
resource "azurerm_app_configuration_key" "BOT_ID" {
  configuration_store_id = azurerm_app_configuration.zyptai-s11-configdev.id
  key                    = "BOT_ID"
  value                  = "2de94689-eb72-4753-bc48-27d381bf5720"

  depends_on = [ azurerm_app_configuration.zyptai-s11-configdev ]
}

#defining the BOT_TENANT_ID for the App Configuration
resource "azurerm_app_configuration_key" "BOT_TENANT_ID" {
  configuration_store_id = azurerm_app_configuration.zyptai-s11-configdev.id
  key                    = "BOT_TENANT_ID"
  value                  = "f20f5397-6421-44f6-80aa-1dbcc827e24d"

  depends_on = [ azurerm_app_configuration.zyptai-s11-configdev ]
}

#defining the BOT_TYPE for the App Configuration
resource "azurerm_app_configuration_key" "BOT_TYPE" {
  configuration_store_id = azurerm_app_configuration.zyptai-s11-configdev.id
  key                    = "BOT_TYPE"
  value                  = "UserAssignedMsi"

  depends_on = [ azurerm_app_configuration.zyptai-s11-configdev ]
}

#defining the COSMOS_ENDPOINT for the App Configuration
resource "azurerm_app_configuration_key" "COSMOS_ENDPOINT" {
  configuration_store_id = azurerm_app_configuration.zyptai-s11-configdev.id
  key                    = "COSMOS_ENDPOINT"
  value                  = "https://zyptai-cosmosdb.documents.azure.com:443/"

  depends_on = [ azurerm_app_configuration.zyptai-s11-configdev ]
}

#defining the COSMOS_KEY for the App Configuration
resource "azurerm_app_configuration_key" "COSMOS_KEY" {
  configuration_store_id = azurerm_app_configuration.zyptai-s11-configdev.id
  key                    = "COSMOS_KEY"
  value                  = "swTIqByLIcfWewdYkDufo4NhcKDZix3GZGVqSFqrzSBJ3cMookKJSjLvlimfOANgFLevFG4mchN9ACDbfeTJLQ=="

  depends_on = [ azurerm_app_configuration.zyptai-s11-configdev ]
}

#defining the FUNCTION_APP_KEY for the App Configuration
resource "azurerm_app_configuration_key" "FUNCTION_APP_KEY" {
  configuration_store_id = azurerm_app_configuration.zyptai-s11-configdev.id
  key                    = "FUNCTION_APP_KEY"
  value                  = "5_lLH3zA5Nnc_bREl_zBe5buZsoTKwsEkJap3sw7w51nAzFudj7WJg=="

  depends_on = [ azurerm_app_configuration.zyptai-s11-configdev ]
}

#defining the FUNCTION_URL_KEY_VAULT for the App Configuration
resource "azurerm_app_configuration_key" "FUNCTION_URL_KEY_VAULT" {
  configuration_store_id = azurerm_app_configuration.zyptai-s11-configdev.id
  key                    = "FUNCTION_URL_KEY_VAULT"
  value                  = "https://zyptai-s11-keyvault.azurewebsites.net/api/zyptKeyVault"

  depends_on = [ azurerm_app_configuration.zyptai-s11-configdev ]
}

#defining the JIRA_BASE_URL for the App Configuration
resource "azurerm_app_configuration_key" "JIRA_BASE_URL" {
  configuration_store_id = azurerm_app_configuration.zyptai-s11-configdev.id
  key                    = "JIRA_BASE_URL"
  value                  = "https://zyptai.atlassian.net"

  depends_on = [ azurerm_app_configuration.zyptai-s11-configdev ]
}

#defining the JIRA_USERNAME for the App Configuration
resource "azurerm_app_configuration_key" "JIRA_USERNAME" {
  configuration_store_id = azurerm_app_configuration.zyptai-s11-configdev.id
  key                    = "JIRA_USERNAME"
  value                  = "tim.barrow@zyptai.com"

  depends_on = [ azurerm_app_configuration.zyptai-s11-configdev ]
}

#defining the KEY_VAULT_NAME for the App Configuration
resource "azurerm_app_configuration_key" "KEY_VAULT_NAME" {
  configuration_store_id = azurerm_app_configuration.zyptai-s11-configdev.id
  key                    = "KEY_VAULT_NAME"
  value                  = "zyptai-s11-kv"

  depends_on = [ azurerm_app_configuration.zyptai-s11-configdev ]
}

#defining the LUCID_USER for the App Configuration
resource "azurerm_app_configuration_key" "LUCID_USER" {
  configuration_store_id = azurerm_app_configuration.zyptai-s11-configdev.id
  key                    = "LUCID_USER"
  value                  = "tim.barrow@zyptai.com"

  depends_on = [ azurerm_app_configuration.zyptai-s11-configdev ]
}

#defining the NODE_ENV for the App Configuration
resource "azurerm_app_configuration_key" "NODE_ENV" {
  configuration_store_id = azurerm_app_configuration.zyptai-s11-configdev.id
  key                    = "NODE_ENV"
  value                  = "production"

  depends_on = [ azurerm_app_configuration.zyptai-s11-configdev ]
}

#defining the SEARCH_INDEX_NAME for the App Configuration
resource "azurerm_app_configuration_key" "SEARCH_INDEX_NAME" {
  configuration_store_id = azurerm_app_configuration.zyptai-s11-configdev.id
  key                    = "SEARCH_INDEX_NAME"
  value                  = "sharepointblobindx"

  depends_on = [ azurerm_app_configuration.zyptai-s11-configdev ]
}

#defining the SHAREPOINT_BOT_ID for the App Configuration
resource "azurerm_app_configuration_key" "SHAREPOINT_BOT_ID" {
  configuration_store_id = azurerm_app_configuration.zyptai-s11-configdev.id
  key                    = "SHAREPOINT_BOT_ID"
  value                  = "2de94689-eb72-4753-bc48-27d381bf5720"

  depends_on = [ azurerm_app_configuration.zyptai-s11-configdev ]
}

#defining the SHAREPOINT_BOT_TENANT_ID for the App Configuration
resource "azurerm_app_configuration_key" "SHAREPOINT_BOT_TENANT_ID" {
  configuration_store_id = azurerm_app_configuration.zyptai-s11-configdev.id
  key                    = "SHAREPOINT_BOT_TENANT_ID"
  value                  = "f20f5397-6421-44f6-80aa-1dbcc827e24d"

  depends_on = [ azurerm_app_configuration.zyptai-s11-configdev ]
}

#defining the SHAREPOINT_INDEXER_FUNCTION_URL for the App Configuration
resource "azurerm_app_configuration_key" "SHAREPOINT_INDEXER_FUNCTION_URL" {
  configuration_store_id = azurerm_app_configuration.zyptai-s11-configdev.id
  key                    = "SHAREPOINT_INDEXER_FUNCTION_URL"
  value                  = "https://zyptai-s11-sharepointindexer.azurewebsites.net/api/sharepointindexer"

  depends_on = [ azurerm_app_configuration.zyptai-s11-configdev ]
}

#defining the SHAREPOINT_STORAGE_QUEUE_NAME for the App Configuration
resource "azurerm_app_configuration_key" "SHAREPOINT_STORAGE_QUEUE_NAME" {
  configuration_store_id = azurerm_app_configuration.zyptai-s11-configdev.id
  key                    = "SHAREPOINT_STORAGE_QUEUE_NAME"
  value                  = "file-processing-queue"

  depends_on = [ azurerm_app_configuration.zyptai-s11-configdev ]
}

#defining the SHAREPOINT_URL for the App Configuration
resource "azurerm_app_configuration_key" "SHAREPOINT_URL" {
  configuration_store_id = azurerm_app_configuration.zyptai-s11-configdev.id
  key                    = "SHAREPOINT_URL"
  value                  = "https://zyptai.sharepoint.com/sites/Document_Repository/Shared%20Documents/Forms/AllItems.aspx"

  depends_on = [ azurerm_app_configuration.zyptai-s11-configdev ]
}

#defining the SHAREPOINT_WEBHOOK_URL for the App Configuration
resource "azurerm_app_configuration_key" "SHAREPOINT_WEBHOOK_URL" {
  configuration_store_id = azurerm_app_configuration.zyptai-s11-configdev.id
  key                    = "SHAREPOINT_WEBHOOK_URL"
  value                  = "https://zyptai-s11-webhook.azurewebsites.net/api/notifications"

  depends_on = [ azurerm_app_configuration.zyptai-s11-configdev ]
}

#defining the VAULT_URL for the App Configuration
resource "azurerm_app_configuration_key" "VAULT_URL" {
  configuration_store_id = azurerm_app_configuration.zyptai-s11-configdev.id
  key                    = "VAULT_URL"
  value                  = "https://zyptai-s11-kv.vault.azure.net/"

  depends_on = [ azurerm_app_configuration.zyptai-s11-configdev ]
}





























































