variable "compute_organization_security_policies" {
  description = <<EOT
Map of compute_organization_security_policies, attributes below
Required:
    - parent
Optional:
    - deletion_policy
    - description
    - display_name
    - short_name
    - type
    - advanced_options_config (block):
        - json_custom_config (optional, block):
            - content_types (required)
        - json_parsing (optional)
        - log_level (optional)
        - request_body_inspection_size (optional)
        - user_ip_request_headers (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    parent          = string
    deletion_policy = optional(string)
    description     = optional(string)
    display_name    = optional(string)
    short_name      = optional(string)
    type            = optional(string)
    advanced_options_config = optional(object({
      json_custom_config = optional(object({
        content_types = set(string)
      }))
      json_parsing                 = optional(string)
      log_level                    = optional(string)
      request_body_inspection_size = optional(string)
      user_ip_request_headers      = optional(set(string))
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  # Note: 4 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

