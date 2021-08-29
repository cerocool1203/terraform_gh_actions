resource "azurerm_resource_group" "cero" {
  name     = "WEBAPP-RG-01"
  location = "australiaeast"
}

resource "azurerm_app_service_plan" "cero" {
  name                = var.app_service_plan_name
  location            = azurerm_resource_group.cero.location
  resource_group_name = azurerm_resource_group.cero.name
  kind                = "Linux"
  reserved            = true

  sku {
    tier = "Standard"
    size = "S1"
  }
}

#App Service 
resource "azurerm_app_service" "cero_prod" {
  name                = var.app_service_name_prefix
  location            = azurerm_resource_group.cero.location
  resource_group_name = azurerm_resource_group.cero.name
  app_service_plan_id = azurerm_app_service_plan.cero.id

  site_config {
    linux_fx_version = "NODE|12-lts"
    app_command_line = "npx http-server"
  }
}

#App Service Staging Slot 
# resource "azurerm_app_service_slot" "cero" {
#   name                = "staging"
#   app_service_name    = azurerm_app_service.cero_prod.name
#   location            = azurerm_resource_group.cero.location
#   resource_group_name = azurerm_resource_group.cero.name
#   app_service_plan_id = azurerm_app_service_plan.cero.id

#   site_config {
#     linux_fx_version = "NODE|12-lts"
#     scm_type         = "VSTSRM"
#     app_command_line = "npx http-server"
#   }
# }