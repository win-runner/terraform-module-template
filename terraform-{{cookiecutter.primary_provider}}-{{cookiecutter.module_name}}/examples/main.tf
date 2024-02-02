provider "{{ cookiecutter.primary_provider }}" {}

module "example" {
  source = "../"
  name   = "foo"
}
