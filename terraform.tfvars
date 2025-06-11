#defining the app service plans that will be created in the resource group
app_service_plans = {

   #App Service Plans for zyptai-agent
    agent = {
    name     = "zyptai-agent-plan",
    sku_name = "B1",
    os_type = "Linux",

}
    #App Service Plans for zyptai-s11-bot-webapp
    bot = {
    name     = "zyptai-S11-bot-plan",
    sku_name = "B1" ,
    os_type = "Windows",
  

}

    #App Service Plans for zyptai-S11-keyvault
    keyvault = { 
    name = "zyptai-S11-keyvault-plan", 
    sku_name = "B1" ,
    os_type = "Windows",
 
}


    #App Service Plans for zyptai-S11-lucidchart
    lucidchart = { 
    name = "zyptai-S11-lucidchart-plan", 
    sku_name = "B1",
    os_type = "Windows",
  

}


    #App Service Plans for zyptai-S11-sharepointindexer
    sharepoint = { 
    name = "zyptai-S11-sharepointindexer-plan", 
    sku_name = "B1" ,
    os_type = "Windows", 
   
}

    #App Service Plans for zyptai-S11-webhook
    webhook = { 
    name = "zyptai-S11-webhook-plan", 
    sku_name = "B1",
    os_type = "Windows",

  }

    #App Service Plans for zyptai-S11-word
    word = { 
    name = "zyptai-S11-word-plan", 
    sku_name = "B1",
    os_type = "Linux"
    }
}

# App Service Plans for zyptai-S11-dev-rg
app_services = {
  agent = {
    name          = "zyptai-agent221009"
    plan_ref      = "agent"
    os_type       = "Linux"
    runtime_stack = "NODE"
    version       = "20-lts"
  }

  botwebapp = {
    name          = "zyptai-s11-bot-webapp2210023489"
    plan_ref      = "bot"
    os_type       = "Windows"
    runtime_stack = "NODE"
    version       = "~20"  
  }

  webhook = {
    name          = "zyptai-s11-webhook2210098"
    plan_ref      = "webhook"
    os_type       = "Linux"
    runtime_stack = "NODE"
    version       = "22-lts"
  }

  word = {
    name          = "zyptai-S11-word2210"
    plan_ref      = "word"
    os_type       = "Linux"
    runtime_stack = "NODE"
    version       = "18-lts"
  }
}


cosmos_databases = {
  "zypt-processing-agent-db" = {
    containers = [
      { name = "steps",   partition_key_path = "/id" },
      { name = "results", partition_key_path = "/id" },
      { name = "tasks",   partition_key_path = "/id" }
    ]
  },
  "zyptai_conversations" = {
    containers = [
      { name = "conversations", partition_key_path = "/id" }
    ]
  },
  "zypt-conversations" = {
    containers = [
        { name = "conversations", partition_key_path = "/id" }
    ]
  }
}







