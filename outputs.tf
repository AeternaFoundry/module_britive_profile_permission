output "profile_permissions_id" {
  description = "Map of id values across all profile_permissions, keyed the same as var.profile_permissions"
  value       = { for k, v in britive_profile_permission.profile_permissions : k => v.id }
}
output "profile_permissions_app_name" {
  description = "Map of app_name values across all profile_permissions, keyed the same as var.profile_permissions"
  value       = { for k, v in britive_profile_permission.profile_permissions : k => v.app_name }
}
output "profile_permissions_permission_name" {
  description = "Map of permission_name values across all profile_permissions, keyed the same as var.profile_permissions"
  value       = { for k, v in britive_profile_permission.profile_permissions : k => v.permission_name }
}
output "profile_permissions_permission_type" {
  description = "Map of permission_type values across all profile_permissions, keyed the same as var.profile_permissions"
  value       = { for k, v in britive_profile_permission.profile_permissions : k => v.permission_type }
}
output "profile_permissions_profile_id" {
  description = "Map of profile_id values across all profile_permissions, keyed the same as var.profile_permissions"
  value       = { for k, v in britive_profile_permission.profile_permissions : k => v.profile_id }
}
output "profile_permissions_profile_name" {
  description = "Map of profile_name values across all profile_permissions, keyed the same as var.profile_permissions"
  value       = { for k, v in britive_profile_permission.profile_permissions : k => v.profile_name }
}

