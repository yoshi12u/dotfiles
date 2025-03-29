$ARGUMENTS

## File names

If needed, you can use the following file names:

- A `backend.tf` file that contains your backend configuration. You can define multiple `terraform` blocks in your configuration to separate your backend configuration from your Terraform and provider versioning configuration.
- A `main.tf` file that contains all resource and data source blocks.
- A `outputs.tf` file that contains all output blocks in alphabetical order.
- A `providers.tf` file that contains all `provider` blocks and configuration.
- A `terraform.tf` file that contains a single `terraform` block which defines your `required_version` and `required_providers`.
- A `variables.tf` file that contains all variable blocks in alphabetical order.
- A `locals.tf` file that contains local values. Refer to [local values](#local-values) for more information.
- A `override.tf` file that contains override definitions for your configuration. Terraform loads this and all files ending with `_override.tf` last. Use them sparingly and add comments to the original resource definitions, as these overrides make your code harder to reason about. Refer to the [override files](/terraform/language/files/override) documentation for more information.
