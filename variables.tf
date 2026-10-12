variable "notification_configurations" {
  description = <<EOT
Map of notification_configurations, attributes below
Required:
    - destination_type
    - name
    - workspace_id
Optional:
    - email_addresses
    - email_user_ids
    - enabled
    - token
    - token_wo
    - token_wo_version
    - triggers
    - url
    - url_wo
    - url_wo_version
EOT

  type = map(object({
    destination_type = string
    name             = string
    workspace_id     = string
    email_addresses  = optional(set(string))
    email_user_ids   = optional(set(string))
    enabled          = optional(bool)
    token            = optional(string)
    token_wo         = optional(string)
    token_wo_version = optional(number)
    triggers         = optional(set(string))
    url              = optional(string)
    url_wo           = optional(string)
    url_wo_version   = optional(number)
  }))
}

