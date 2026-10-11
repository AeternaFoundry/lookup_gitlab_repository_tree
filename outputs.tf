output "repository_tree_lookup_id" {
  description = "Map of id values across all repository_tree_lookup, keyed the same as var.repository_tree_lookup except keys with no id are omitted"
  value       = { for k, v in data.gitlab_repository_tree.repository_tree_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "repository_tree_lookup_path" {
  description = "Map of path values across all repository_tree_lookup, keyed the same as var.repository_tree_lookup except keys with no path are omitted"
  value       = { for k, v in data.gitlab_repository_tree.repository_tree_lookup : k => v.path if v.path != null && length(v.path) > 0 }
}
output "repository_tree_lookup_project" {
  description = "Map of project values across all repository_tree_lookup, keyed the same as var.repository_tree_lookup except keys with no project are omitted"
  value       = { for k, v in data.gitlab_repository_tree.repository_tree_lookup : k => v.project if v.project != null && length(v.project) > 0 }
}
output "repository_tree_lookup_recursive" {
  description = "Map of recursive values across all repository_tree_lookup, keyed the same as var.repository_tree_lookup except keys with no recursive are omitted"
  value       = { for k, v in data.gitlab_repository_tree.repository_tree_lookup : k => v.recursive if v.recursive != null }
}
output "repository_tree_lookup_ref" {
  description = "Map of ref values across all repository_tree_lookup, keyed the same as var.repository_tree_lookup except keys with no ref are omitted"
  value       = { for k, v in data.gitlab_repository_tree.repository_tree_lookup : k => v.ref if v.ref != null && length(v.ref) > 0 }
}
output "repository_tree_lookup_tree" {
  description = "Map of tree values across all repository_tree_lookup, keyed the same as var.repository_tree_lookup except keys with no tree are omitted"
  value       = { for k, v in data.gitlab_repository_tree.repository_tree_lookup : k => v.tree if v.tree != null && length(v.tree) > 0 }
}

