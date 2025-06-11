resource "azurerm_static_web_app" "zyptai-s11-chat" {
  name                = "zyptai-s11-chat2210020"
  resource_group_name = azurerm_resource_group.zyptai-S11-dev-rg.name
  location            = "West US2"
  sku_tier            = "Standard"
  sku_size            = "Standard"
  identity {
    type = "SystemAssigned"
  }

  tags = {
    Application = "ZyptAI"
    Environment = "Dev"
    DeployedBy  = "test@testcorp.com"
  }

  depends_on = [azurerm_resource_group.zyptai-S11-dev-rg]
}

resource "azurerm_static_web_app" "Zyptai-Requestor" {
  name                = "Zyptai-Requestor2345"
  resource_group_name = azurerm_resource_group.zyptai-S11-dev-rg.name
  location            = "East US2"
  sku_tier            = "Free"
  sku_size            = "Free"

  depends_on = [azurerm_resource_group.zyptai-S11-dev-rg]
}








