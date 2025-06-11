resource "azurerm_cosmosdb_account" "cosmos_account" {
  name                = var.cosmos_account_name
  location            = "West US2"
  resource_group_name = var.resource_group_name
  offer_type          = "Standard"
  kind                = "GlobalDocumentDB"

  consistency_policy {
    consistency_level = "Session"
  }

  geo_location {
    location          = "West US2"
    failover_priority = 0
  }

  capabilities {
    name = "EnableServerless"
  }

}


resource "azurerm_cosmosdb_sql_container" "containers" {
  for_each = {
    for pair in flatten([
      for db_name, db in var.cosmos_databases : [
        for container in db.containers : {
          key                = "${db_name}.${container.name}"
          db_name            = db_name
          container_name     = container.name
          partition_key_path = container.partition_key_path
        }
      ]
    ]) : pair.key => pair
  }

  name                  = each.value.container_name
  resource_group_name   = var.resource_group_name
  account_name          = azurerm_cosmosdb_account.cosmos_account.name
  database_name         = azurerm_cosmosdb_sql_database.cosmos_db[each.value.db_name].name
  partition_key_paths   = [each.value.partition_key_path]
  partition_key_version = 2
}


resource "azurerm_cosmosdb_sql_database" "cosmos_db" {
  for_each = var.cosmos_databases

  name                = each.key
  resource_group_name = var.resource_group_name
  account_name        = azurerm_cosmosdb_account.cosmos_account.name

  depends_on = [azurerm_cosmosdb_account.cosmos_account]
}