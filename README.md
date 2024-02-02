# `Terraform Module Standard` Template

This `Cookiecutter` template implements our evoila good practices
for Terraform modules and should be used to create new modules that are used
in our private Terraform registry.

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

1. We recommend using the [Gitflow Workflow](https://www.atlassian.com/git/tutorials/comparing-workflows/gitflow-workflow).
2. We recommend using `Visual Studio Code`.

### Must have for `Cloud Platform Deployment modules`

If you plan to allow your Terrform module to be deployed as a `Cloud Platform
Deployment`, you should also follow these guidelines in addition to the ones
above:

1. As we automatically transform Cloud Platform Deployment deployments & parameters
   to Terraform module instances, you need to make sure your input parameter names
   match the API parameter definition, example:

This `Cloud Platform Deployment`

```json
{
  "type": "sometype",
  "data": {
    "parameters": {
      "name": "foo",
      "someString": "bar",
      "someList": ["baz"]
    }
  }
}
```

will instantiate the following Terraform module:

```terraform
module "deployment_73b4f7aa-1018-4bcc-918f-e57a80ee840d" {
  name       = "foo"
  someString = "bar"
  someList   = ["baz"]
}
```

## Example modules built with this template

- ...

### Writing tests

For the time being, we do not require tests.  
See https://developer.hashicorp.com/terraform/language/tests

## Create a new module with this template

Please follow these steps to instantiate a new module:

1. [Install cookiecutter](https://cookiecutter.readthedocs.io/en/stable/installation.html)
2. Run cookiecutter:

```shell
cookiecutter \
  https://<Insert path to module template>/terraform-module-template \
  -o /path/to/your/new/module/root
```

**Note** You can find additional documentation how to work with your newly created
module in the modules README.md file.
