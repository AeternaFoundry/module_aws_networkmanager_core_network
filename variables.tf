variable "networkmanager_core_networks" {
  description = <<EOT
Map of networkmanager_core_networks, attributes below
Required:
    - global_network_id
Optional:
    - base_policy_document
    - base_policy_regions
    - create_base_policy
    - description
    - tags
    - tags_all
EOT

  type = map(object({
    global_network_id    = string
    base_policy_document = optional(string)
    base_policy_regions  = optional(set(string))
    create_base_policy   = optional(bool)
    description          = optional(string)
    tags                 = optional(map(string))
    tags_all             = optional(map(string))
  }))
  validation {
    condition = alltrue([
      for k, v in var.networkmanager_core_networks : (
        v.base_policy_document == null || ((length(v.base_policy_document) >= 0 && length(v.base_policy_document) <= 10000000) && (can(jsondecode(v.base_policy_document))))
      )
    ])
    error_message = "all of: must be between 0 and 10000000 characters; must be valid JSON"
  }
  validation {
    condition = alltrue([
      for k, v in var.networkmanager_core_networks : (
        length(v.global_network_id) >= 0 && length(v.global_network_id) <= 50
      )
    ])
    error_message = "must be between 0 and 50 characters"
  }
  # Note: 2 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

