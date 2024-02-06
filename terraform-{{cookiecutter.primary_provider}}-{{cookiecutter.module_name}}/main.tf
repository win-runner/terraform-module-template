/**
 *
 * Terraform module {{ cookiecutter.project_slug }}
 *
 **/

terraform {
  required_version = "~> 1.5"

  required_providers {
    {{ cookiecutter.primary_provider }} = {
      source  = "{{ cookiecutter.primary_provider }}"
      version = ">= {{ cookiecutter.primary_provider_minimum_version }}"
    }
  }
}

#=========================================================================#
#
#   This is a section (example: Application resources)
#
#=========================================================================#
#// Add resources here
