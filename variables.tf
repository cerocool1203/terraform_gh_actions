variable "app_service_plan_name" {
  default     = "cero-web"
  description = "The name of the app service plan"
}

variable "app_service_name_prefix" {
  default     = "gh"
  description = "The beginning part of your App Service host name"
}