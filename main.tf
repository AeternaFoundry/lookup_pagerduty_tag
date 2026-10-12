data "pagerduty_tag" "tag_lookup" {
  for_each = var.tag_lookup

  label = each.value.label
}

