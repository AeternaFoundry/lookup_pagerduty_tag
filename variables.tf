variable "tag_lookup" {
  description = <<EOT
Map of tag_lookup, attributes below
Required:
    - label
EOT

  type = map(object({
    label = string
  }))
}

