#// this generates names for the azure resources using the following pattern:
#// [prefix]-[cafprefix]-[name]-[postfix]-[random_chars]
# resource "azurecaf_name" "main" {
#   name          = lower(var.name)
#   random_length = 8
#   clean_input   = true
#   resource_types = [
#     "azurerm_resource_group",
#   ]
# }
