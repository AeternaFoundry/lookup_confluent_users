output "users_lookup_id" {
  description = "Map of id values across all users_lookup, keyed the same as var.users_lookup except keys with no id are omitted"
  value       = { for k, v in data.confluent_users.users_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "users_lookup_ids" {
  description = "Map of ids values across all users_lookup, keyed the same as var.users_lookup except keys with no ids are omitted"
  value       = { for k, v in data.confluent_users.users_lookup : k => v.ids if v.ids != null && length(v.ids) > 0 }
}

