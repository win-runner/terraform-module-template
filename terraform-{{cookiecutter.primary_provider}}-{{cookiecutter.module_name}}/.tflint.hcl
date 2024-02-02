rule "terraform_comment_syntax" {
  #// https://github.com/terraform-linters/tflint/blob/master/docs/rules/terraform_comment_syntax.md
  enabled = true
}

rule "terraform_deprecated_index" {
  #// https://github.com/terraform-linters/tflint/blob/master/docs/rules/terraform_deprecated_index.md
  enabled = true
}

rule "terraform_deprecated_interpolation" {
  #// https://github.com/terraform-linters/tflint/blob/master/docs/rules/terraform_deprecated_interpolation.md
  enabled = true
}

rule "terraform_documented_outputs" {
  #// https://github.com/terraform-linters/tflint/blob/master/docs/rules/terraform_documented_outputs.md
  enabled = true
}

rule "terraform_documented_variables" {
  #// https://github.com/terraform-linters/tflint/blob/master/docs/rules/terraform_documented_variables.md
  enabled = true
}

rule "terraform_module_pinned_source" {
  #// https://github.com/terraform-linters/tflint/blob/master/docs/rules/terraform_module_pinned_source.md
  enabled          = true
  style            = "flexible"
  default_branches = ["master", "main"]
}

rule "terraform_module_version" {
  enabled = true
}

rule "terraform_naming_convention" {
  #// https://github.com/terraform-linters/tflint/blob/master/docs/rules/terraform_naming_convention.md
  enabled = true
  format  = "snake_case"

  variable {
    #// camelCase
    custom = "[a-z]+((\\d)|([A-Z0-9][a-z0-9]+))*([A-Z])?"
  }

  output {
    #// camelCase
    custom = "[a-z]+((\\d)|([A-Z0-9][a-z0-9]+))*([A-Z])?"
  }
}

rule "terraform_required_providers" {
  #// https://github.com/terraform-linters/tflint/blob/master/docs/rules/terraform_required_providers.md
  enabled = true
}

rule "terraform_required_version" {
  #// https://github.com/terraform-linters/tflint/blob/master/docs/rules/terraform_required_version.md
  enabled = true
}

rule "terraform_standard_module_structure" {
  #// https://github.com/terraform-linters/tflint/blob/master/docs/rules/terraform_standard_module_structure.md
  #// NOTE: This should only be enabled for Terraform modules
  enabled = true
}

rule "terraform_typed_variables" {
  #// https://github.com/terraform-linters/tflint/blob/master/docs/rules/terraform_typed_variables.md
  enabled = true
}

rule "terraform_unused_declarations" {
  #// https://github.com/terraform-linters/tflint/blob/master/docs/rules/terraform_unused_declarations.md
  enabled = true
}

rule "terraform_unused_required_providers" {
  #// https://github.com/terraform-linters/tflint/blob/master/docs/rules/terraform_unused_required_providers.md
  enabled = true
}
