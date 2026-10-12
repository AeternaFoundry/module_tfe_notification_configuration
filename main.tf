resource "tfe_notification_configuration" "notification_configurations" {
  for_each = var.notification_configurations

  destination_type = each.value.destination_type
  name             = each.value.name
  workspace_id     = each.value.workspace_id
  email_addresses  = each.value.email_addresses
  email_user_ids   = each.value.email_user_ids
  enabled          = each.value.enabled
  token            = each.value.token
  token_wo         = each.value.token_wo
  token_wo_version = each.value.token_wo_version
  triggers         = each.value.triggers
  url              = each.value.url
  url_wo           = each.value.url_wo
  url_wo_version   = each.value.url_wo_version
}

