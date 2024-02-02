#// this file contains the modules output variables.
#// https://www.terraform.io/language/values/outputs

output "name" {
  value       = var.name
  description = <<DESC
This is an example output variable.
DESC
}
