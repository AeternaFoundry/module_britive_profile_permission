variable "profile_permissions" {
  description = <<EOT
Map of profile_permissions, attributes below
Required:
    - permission_name
    - permission_type
    - profile_id
Optional:
    - app_name
    - profile_name
EOT

  type = map(object({
    permission_name = string
    permission_type = string
    profile_id      = string
    app_name        = optional(string)
    profile_name    = optional(string)
  }))
  validation {
    condition = alltrue([
      for k, v in var.profile_permissions : (
        length(v.profile_id) >= 1
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.profile_permissions : (
        length(v.permission_name) >= 1
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.profile_permissions : (
        length(v.permission_type) >= 1
      )
    ])
    error_message = "must not be empty"
  }
}

