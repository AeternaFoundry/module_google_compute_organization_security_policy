output "compute_organization_security_policies_id" {
  description = "Map of id values across all compute_organization_security_policies, keyed the same as var.compute_organization_security_policies except keys with no id are omitted"
  value       = { for k, v in google_compute_organization_security_policy.compute_organization_security_policies : k => v.id if v.id != null && length(v.id) > 0 }
}
output "compute_organization_security_policies_advanced_options_config" {
  description = "Map of advanced_options_config values across all compute_organization_security_policies, keyed the same as var.compute_organization_security_policies except keys with no advanced_options_config are omitted"
  value       = { for k, v in google_compute_organization_security_policy.compute_organization_security_policies : k => one(v.advanced_options_config) if v.advanced_options_config != null && length(v.advanced_options_config) > 0 }
}
output "compute_organization_security_policies_deletion_policy" {
  description = "Map of deletion_policy values across all compute_organization_security_policies, keyed the same as var.compute_organization_security_policies except keys with no deletion_policy are omitted"
  value       = { for k, v in google_compute_organization_security_policy.compute_organization_security_policies : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "compute_organization_security_policies_description" {
  description = "Map of description values across all compute_organization_security_policies, keyed the same as var.compute_organization_security_policies except keys with no description are omitted"
  value       = { for k, v in google_compute_organization_security_policy.compute_organization_security_policies : k => v.description if v.description != null && length(v.description) > 0 }
}
output "compute_organization_security_policies_display_name" {
  description = "Map of display_name values across all compute_organization_security_policies, keyed the same as var.compute_organization_security_policies except keys with no display_name are omitted"
  value       = { for k, v in google_compute_organization_security_policy.compute_organization_security_policies : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "compute_organization_security_policies_fingerprint" {
  description = "Map of fingerprint values across all compute_organization_security_policies, keyed the same as var.compute_organization_security_policies except keys with no fingerprint are omitted"
  value       = { for k, v in google_compute_organization_security_policy.compute_organization_security_policies : k => v.fingerprint if v.fingerprint != null && length(v.fingerprint) > 0 }
}
output "compute_organization_security_policies_parent" {
  description = "Map of parent values across all compute_organization_security_policies, keyed the same as var.compute_organization_security_policies except keys with no parent are omitted"
  value       = { for k, v in google_compute_organization_security_policy.compute_organization_security_policies : k => v.parent if v.parent != null && length(v.parent) > 0 }
}
output "compute_organization_security_policies_policy_id" {
  description = "Map of policy_id values across all compute_organization_security_policies, keyed the same as var.compute_organization_security_policies except keys with no policy_id are omitted"
  value       = { for k, v in google_compute_organization_security_policy.compute_organization_security_policies : k => v.policy_id if v.policy_id != null && length(v.policy_id) > 0 }
}
output "compute_organization_security_policies_short_name" {
  description = "Map of short_name values across all compute_organization_security_policies, keyed the same as var.compute_organization_security_policies except keys with no short_name are omitted"
  value       = { for k, v in google_compute_organization_security_policy.compute_organization_security_policies : k => v.short_name if v.short_name != null && length(v.short_name) > 0 }
}
output "compute_organization_security_policies_type" {
  description = "Map of type values across all compute_organization_security_policies, keyed the same as var.compute_organization_security_policies except keys with no type are omitted"
  value       = { for k, v in google_compute_organization_security_policy.compute_organization_security_policies : k => v.type if v.type != null && length(v.type) > 0 }
}

