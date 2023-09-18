variable "parent_id" {
  type        = string
  description = "Defines on which GCP ressource the policies are applied."
}

variable "admin_project_id" {
  type        = string
  description = "Only images from the admin project will be allowed as the source for boot disks for new instances."
}

variable "allowed_customer_ids" {
  type        = list(string)
  description = "List of Google Workspace or Cloud Identity customer IDs that can access the GCP ressources."
}

variable "allowed_domains" {
  type        = list(string)
  description = "List of domains that can be used as essential contacts."
}

variable "export_candidate_parent_ids" {
  type        = list(string)
  description = "List of GCP organizations where the GCP ressources can be exported"
  default     = []
}

variable "custom_organization_policies" {
  type = list(object({
    constraint          = string                # Name of the GCP Constraint : https://cloud.google.com/resource-manager/docs/organization-policy/org-policy-constraints
    inherit_from_parent = optional(bool, false) # Whether the policy should propagate the policies from its parents
    rules = set(object({                        # List of rules for the policy
      allow_all = optional(string)              # "TRUE" or "FALSE", only condition can also be filled
      deny_all  = optional(string)              # "TRUE" or "FALSE", only condition can also be filled
      type      = optional(string)              # "Allow" or "Deny", condition and values can also be filled
      values    = optional(list(string))        # condition and type can also be filled
      enforce   = optional(bool)                # "TRUE" or "FALSE", only condition can also be filled
      condition = optional(object({             # can be used to filter on which ressources the policy will be applied
        description = string
        expression  = string
        location    = string
        title       = string
      }))
    }))
  }))
  description = "List of custom policies that differ from the common policies defined by the module"
  default     = []
}
