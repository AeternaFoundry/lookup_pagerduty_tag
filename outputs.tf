output "tag_lookup_id" {
  description = "Map of id values across all tag_lookup, keyed the same as var.tag_lookup except keys with no id are omitted"
  value       = { for k, v in data.pagerduty_tag.tag_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "tag_lookup_label" {
  description = "Map of label values across all tag_lookup, keyed the same as var.tag_lookup except keys with no label are omitted"
  value       = { for k, v in data.pagerduty_tag.tag_lookup : k => v.label if v.label != null && length(v.label) > 0 }
}

