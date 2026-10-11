data "gitlab_repository_tree" "repository_tree_lookup" {
  for_each = var.repository_tree_lookup

  project   = each.value.project
  ref       = each.value.ref
  path      = each.value.path
  recursive = each.value.recursive
}

