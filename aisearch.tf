resource "azurerm_search_service" "aisearchbyishan" {
  name                = "aisearchbyishan"
  resource_group_name = var.resource_group_name
  location            = var.location
  sku                 = "basic"
  replica_count       = 1
  partition_count     = 1

   tags = {
    Application   = "ZyptAI"
    CreatedDate   = "20250208T234525Z"
    DeployedBy    = "Marketplace"
    Environment   = "Dev"
    Organization  = "Test Corporation"
    Product       = "SAP AI Assistant"
    ProjectType   = "aoai-your-data-service"
  }

  depends_on = [ azurerm_resource_group.zyptai-S11-dev-rg]

 
}
