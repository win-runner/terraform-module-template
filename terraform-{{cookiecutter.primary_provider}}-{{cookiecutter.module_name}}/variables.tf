#// this file contains the modules input parameters.
#// https://www.terraform.io/language/values/variables

variable "name" {
  type        = string
  nullable    = false
  description = <<EOT
The Name which should be used for the Resources in Azure.
Changing this forces a new Resource to be created.
EOT

  validation {
    condition     = try(regex("[^a-z0-9-]", var.name), "") == ""
    error_message = "Only alphanumerics in lower case are allowed."
  }
}

variable "location" {
  type        = string
  nullable    = false
  default     = "swedencentral"
  description = <<EOT
The location/region where the Storage Account should be created.
Changing this forces a new Resource to be created.
EOT
  validation {
    condition = contains(
      [
        "swedencentral",
        "westeurope",
        "northeurope",
        "germanynorth",
        "germanywestcentral"
      ],
      var.location
    )
    error_message = <<ERR
Possible values are `swedencentral`, `westeurope`,
`northeurope`, `germanynorth`, `germanywestcentral`.
ERR
  }
}
