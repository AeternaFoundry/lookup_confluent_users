variable "users_lookup" {
  description = <<EOT
Map of users_lookup, attributes below
EOT

  type = map(object({
  }))
  default = { all = {} }
}

