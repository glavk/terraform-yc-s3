module "wrapper" {
  source = "../"

  for_each = var.items

  acl                                = try(each.value.acl, var.defaults.acl, null)
  anonymous_access_flags             = try(each.value.anonymous_access_flags, var.defaults.anonymous_access_flags, null)
  bucket_name                        = each.value.bucket_name
  cors_rule                          = try(each.value.cors_rule, var.defaults.cors_rule, [])
  default_storage_class              = try(each.value.default_storage_class, var.defaults.default_storage_class, "STANDARD")
  folder_id                          = try(each.value.folder_id, var.defaults.folder_id, null)
  force_destroy                      = try(each.value.force_destroy, var.defaults.force_destroy, false)
  grant                              = try(each.value.grant, var.defaults.grant, [])
  https                              = try(each.value.https, var.defaults.https, null)
  lifecycle_rule                     = try(each.value.lifecycle_rule, var.defaults.lifecycle_rule, [])
  logging                            = try(each.value.logging, var.defaults.logging, null)
  max_size                           = try(each.value.max_size, var.defaults.max_size, null)
  object_lock_configuration          = try(each.value.object_lock_configuration, var.defaults.object_lock_configuration, null)
  policy                             = try(each.value.policy, var.defaults.policy, { enabled = false })
  policy_console                     = try(each.value.policy_console, var.defaults.policy_console, { enabled = false })
  server_side_encryption_configuration = try(each.value.server_side_encryption_configuration, var.defaults.server_side_encryption_configuration, { enabled = false })
  sse_kms_key_configuration          = try(each.value.sse_kms_key_configuration, var.defaults.sse_kms_key_configuration, {})
  storage_admin_service_account      = try(each.value.storage_admin_service_account, var.defaults.storage_admin_service_account, {})
  tags                               = try(each.value.tags, var.defaults.tags, {})
  versioning                         = try(each.value.versioning, var.defaults.versioning, null)
  website                            = try(each.value.website, var.defaults.website, null)
}
