## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_google"></a> [google](#provider\_google) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [google_org_policy_policy.organization_policies](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/org_policy_policy) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_admin_project_id"></a> [admin\_project\_id](#input\_admin\_project\_id) | Only images from the admin project will be allowed as the source for boot disks for new instances. | `string` | n/a | yes |
| <a name="input_allowed_customer_ids"></a> [allowed\_customer\_ids](#input\_allowed\_customer\_ids) | List of Google Workspace or Cloud Identity customer IDs that can access the GCP ressources. | `list(string)` | n/a | yes |
| <a name="input_allowed_domains"></a> [allowed\_domains](#input\_allowed\_domains) | List of domains that can be used as essential contacts. | `list(string)` | n/a | yes |
| <a name="input_custom_organization_policies"></a> [custom\_organization\_policies](#input\_custom\_organization\_policies) | List of custom policies that differ from the common policies defined by the module | <pre>list(object({<br>    constraint          = string                # Name of the GCP Constraint : https://cloud.google.com/resource-manager/docs/organization-policy/org-policy-constraints<br>    inherit_from_parent = optional(bool, false) # Whether the policy should propagate the policies from its parents<br>    rules = set(object({                        # List of rules for the policy<br>      allow_all = optional(string)              # "TRUE" or "FALSE", only condition can also be filled<br>      deny_all  = optional(string)              # "TRUE" or "FALSE", only condition can also be filled<br>      type      = optional(string)              # "Allow" or "Deny", condition and values can also be filled<br>      values    = optional(list(string))        # condition and type can also be filled<br>      enforce   = optional(bool)                # "TRUE" or "FALSE", only condition can also be filled<br>      condition = optional(object({             # can be used to filter on which ressources the policy will be applied<br>        description = string<br>        expression  = string<br>        location    = string<br>        title       = string<br>      }))<br>    }))<br>  }))</pre> | `[]` | no |
| <a name="input_export_candidate_parent_ids"></a> [export\_candidate\_parent\_ids](#input\_export\_candidate\_parent\_ids) | List of GCP folders or organizations where the GCP ressources can be exported | `list(string)` | `[]` | no |
| <a name="input_parent_id"></a> [parent\_id](#input\_parent\_id) | Defines on which GCP ressource the policies are applied. | `string` | n/a | yes |

## Outputs

No outputs.
