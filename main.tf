resource "google_compute_organization_security_policy" "compute_organization_security_policies" {
  for_each = var.compute_organization_security_policies

  parent          = each.value.parent
  deletion_policy = each.value.deletion_policy
  description     = each.value.description
  display_name    = each.value.display_name
  short_name      = each.value.short_name
  type            = each.value.type

  dynamic "advanced_options_config" {
    for_each = each.value.advanced_options_config != null ? [each.value.advanced_options_config] : []
    content {
      dynamic "json_custom_config" {
        for_each = advanced_options_config.value.json_custom_config != null ? [advanced_options_config.value.json_custom_config] : []
        content {
          content_types = json_custom_config.value.content_types
        }
      }
      json_parsing                 = advanced_options_config.value.json_parsing
      log_level                    = advanced_options_config.value.log_level
      request_body_inspection_size = advanced_options_config.value.request_body_inspection_size
      user_ip_request_headers      = advanced_options_config.value.user_ip_request_headers
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

