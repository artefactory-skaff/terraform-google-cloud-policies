This will deploy the pre-defined policies at a folder level

```hcl
module "google_cloud_policies" {
  source  = "artefactory/gcp-foundations/google-cloud-policies"
  version = "~> 0"

  parent_id            = "folders/<FOLDER_ID>"  # Folder where the pre-defined policies will be applied
  admin_project_id     = "<PROJECT_ID>"         # Project within the folder that will be used for admin activities
  allowed_customer_ids = ["<CUSTOMER_ID>"]      # Your Google Workspace or Client Identity customer ID
  allowed_domains      = ["<DOMAIN>"]           # Your Google Workspace or domain you use for Cloud Identity
}
```

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

No requirements.

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_google_cloud_policies"></a> [google\_cloud\_policies](#module\_google\_cloud\_policies) | artefactory/gcp-foundations/google-cloud-policies | ~> 0 |

## Resources

No resources.

## Inputs

No inputs.

## Outputs

No outputs.
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->