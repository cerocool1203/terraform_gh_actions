output "appservice_name_prod" {
  value       = azurerm_app_service.cero_prod.name
  description = "The App Service name for the prod environment"
}
output "website_hostname_prod" {
  value       = azurerm_app_service.cero_prod.default_site_hostname
  description = "The hostname of the website in the prod environment"
}

# output "website_hostname_staging" {
#   value       = azurerm_app_service_slot.cero.default_site_hostname
#   description = "The hostname of the website in the Staging slot name"
# }