#// this file contains the data sources used in this module.
#// https://www.terraform.io/language/data-sources
#=========================================================================#
#   Standard
#=========================================================================#
data "azurerm_client_config" "current" {}
data "azurerm_subscription" "current" {}
