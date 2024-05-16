# Terraform module `{{ cookiecutter.project_slug }}`

## Summary

{{ cookiecutter.short_description }}

<!-- BEGIN_TF_DOCS -->
<!-- END_TF_DOCS -->

## Contribute

Please make sure you follow the HashiCorp best practices for creating
and maintaining Terraform modules.

### Prerequisites

The following tooling is required to use the contributor helpers:

* [tflint](https://github.com/terraform-linters/tflint)
* [pre-commit](https://pre-commit.com/#install)
* [terraform-docs](https://github.com/terraform-docs/terraform-docs)
* [Terraform](https://www.terraform.io/downloads)

### Publish a new version

All contributions should be added/reviewed using

* [Pull request - Azure DevOps](https://docs.microsoft.com/en-us/azure/devops/repos/git/pull-requests?view=azure-devops)
* [Pull request - GitHub](https://docs.github.com/de/pull-requests/collaborating-with-pull-requests/proposing-changes-to-your-work-with-pull-requests/about-pull-requests)
* [Merge request - GitLab](https://docs.gitlab.com/ee/user/project/merge_requests/creating_merge_requests.html)

Please follow [Semantic Versioning](http://semver.org/) while versioning/tagging this module.

**Important:** Never update/overwrite an existing version tag, this is against good
practice.

### Update the documentation

You can update the documentation with the Makefile target `docs`:

```shell
make docs
```

### Run tests

You can run the tests with the Makefile target `test`:

```shell
make test
```

This currently includes:

* tflint tests
* terraform format tests
