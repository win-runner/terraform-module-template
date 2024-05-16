# Terraform Module Template

This `Cookiecutter` template provides a scaffold to implement good practices
for Terraform modules and can be used to create new modules.

## Guidelines and good practices

### Must have

1. Each module should be maintained inside a dedicated Git repository
1. Module repositories must use this three-part name format:
   `terraform-<PROVIDER>-<NAME>` where `NAME` reflects the type of infrastructure
   the module manages and `PROVIDER` is the main provider where it creates that
   infrastructure. The `NAME` segment can contain additional hyphens.
   Examples: terraform-azuread-application.
1. The module must adhere to the [standard module structure](https://www.terraform.io/language/modules/develop/structure).
   This allows the registry to inspect your module and generate documentation, track resource usage, parse submodules and examples, and more.
1. Modules should be tagged using [semantic version](http://semver.org/). Example, `v1.0.0` and `v0.1.1`. Don't forget to use `v` as a prefix.
1. The provided `tflint` rules should not be changed (adding new ones is OK).
1. The provided `pre-commit` hooks should be used.

### Optional

1. We recommend using the [Gitflow Workflow](https://www.atlassian.com/git/tutorials/comparing-workflows/gitflow-workflow) or [Trunk-based development](https://www.atlassian.com/continuous-delivery/continuous-integration/trunk-based-development).
2. We recommend the use of [Visual Studio Code](https://code.visualstudio.com), due to the extensions and the customizability.
3. We recommend using [KICS](https://kics.io/index.html) and/or [Checkov](https://www.checkov.io) for static code analysis of Infrastructure as Code.

## Example modules built with this template

- ...

### Writing tests

Writing tests is not required, but can be done with `Terraform tests` in Terraform v1.6.0 and later.
See <https://developer.hashicorp.com/terraform/language/tests>

## Create a new module with this template

Please follow these steps to instantiate a new module:

1. [Install cookiecutter](https://cookiecutter.readthedocs.io/en/stable/installation.html)
2. Run cookiecutter:

```shell
cookiecutter \
  https://github.com/win-runner/terraform-module-template/ \
  -o /path/to/your/new/module/root
```

**Note:** You can find additional documentation how to work with your newly created
module in the modules README.md file.
