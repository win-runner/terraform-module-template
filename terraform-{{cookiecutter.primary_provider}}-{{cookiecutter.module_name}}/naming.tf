#// this generates names for the azure resources using the following pattern:
#// [prefix]-[cafprefix]-[name]-[postfix]-[random_chars]
#// Current supported resource types:
#// https://registry.terraform.io/providers/aztfmod/azurecaf/latest/docs/resources/azurecaf_name

locals {
  resource_types = toset([])
}

data "azurecaf_name" "main" {
  for_each = local.resource_types

  name          = var.name
  random_length = 8
  clean_input   = true
  resource_type = each.value
}

resource "terraform_data" "name" {
  input = var.name
}

resource "terraform_data" "azurecaf_name" {
  for_each = local.resource_types

  input = data.azurecaf_name.main[each.key].result

  lifecycle {
    ignore_changes       = [input]
    replace_triggered_by = [terraform_data.name]
  }
}
