resource "britive_profile_permission" "profile_permissions" {
  for_each = var.profile_permissions

  permission_name = each.value.permission_name
  permission_type = each.value.permission_type
  profile_id      = each.value.profile_id
  app_name        = each.value.app_name
  profile_name    = each.value.profile_name
}

