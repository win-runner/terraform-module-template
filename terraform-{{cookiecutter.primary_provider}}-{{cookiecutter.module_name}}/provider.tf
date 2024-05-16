#// this file contains the provider configuration.

terraform {
  required_version = "~> 1.6"

  required_providers {
    {{ cookiecutter.primary_provider }} = {
      source  = "{{ cookiecutter.primary_provider }}"
      version = ">= {{ cookiecutter.primary_provider_minimum_version }}"
    }
  }
}
