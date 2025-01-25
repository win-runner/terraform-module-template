# Terraform Module Template  

This `Cookiecutter` template provides a scaffold to implement good practices  
for Terraform modules and can be used to create new modules.  

## Guidelines and Good Practices  

### Must Have  

1. Each module should be maintained inside a dedicated Git repository.  
2. Module repositories must use this three-part naming format:  
   `terraform-<PROVIDER>-<NAME>`, where `NAME` reflects the type of infrastructure  
   the module manages and `PROVIDER` is the main provider where it creates that  
   infrastructure. The `NAME` segment can contain additional hyphens.  
   **Examples:** `terraform-azuread-application`, `terraform-aws-s3-bucket`.  
3. The module must adhere to the [standard module structure](https://www.terraform.io/language/modules/develop/structure).  
   This allows the registry to inspect your module, generate documentation, track resource usage, parse submodules and examples, and more.  
4. Modules should be tagged using [Semantic Versioning](http://semver.org/).  
   **Examples:** `v1.0.0`, `v0.1.1`. Make sure to use `v` as a prefix.  
5. The provided `tflint` rules must not be changed (adding new ones is acceptable).  
6. The provided `pre-commit` hooks must be used.  

### Optional  

1. It's recommended to use a branching strategy like [Gitflow Workflow](https://www.atlassian.com/git/tutorials/comparing-workflows/gitflow-workflow),  
   [Trunk-Based Development](https://www.atlassian.com/continuous-delivery/continuous-integration/trunk-based-development), or  [GitHub Flow](https://docs.github.com/en/get-started/using-github/github-flow).  
2. [Visual Studio Code](https://code.visualstudio.com) is recommended due to its extensions and customizability.  
3. For static code analysis of Infrastructure as Code, consider using [KICS](https://kics.io/index.html) or [Checkov](https://www.checkov.io).  

## Example Modules Built with This Template  

- ...  

### Writing Tests  

Writing tests is not required but can be done with `Terraform tests` in Terraform v1.6.0 and later.  
For more information, see <https://developer.hashicorp.com/terraform/language/tests>.  

## Create a New Module with This Template  

Follow these steps to create a new module:  

1. [Install Cookiecutter](https://cookiecutter.readthedocs.io/en/stable/installation.html).  
2. Run Cookiecutter:  

    ```shell
    cookiecutter \
      https://github.com/win-runner/terraform-module-template/ \
      -o /path/to/your/new/module/root
    ```  

**Note:** Additional documentation on working with your newly created module  
can be found in the module's `README.md` file.  
