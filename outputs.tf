output "tag_lookup_id" {
  description = "Map of id values across all tag_lookup, keyed the same as var.tag_lookup"
  value       = { for k, v in data.pagerduty_tag.tag_lookup : k => v.id }
}
output "tag_lookup_label" {
  description = "Map of label values across all tag_lookup, keyed the same as var.tag_lookup"
  value       = { for k, v in data.pagerduty_tag.tag_lookup : k => v.label }
}

