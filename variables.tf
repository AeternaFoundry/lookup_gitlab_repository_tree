variable "repository_tree_lookup" {
  description = <<EOT
Map of repository_tree_lookup, attributes below
Required:
    - project
    - ref
Optional:
    - path
    - recursive
EOT

  type = map(object({
    project   = string
    ref       = string
    path      = optional(string)
    recursive = optional(bool)
  }))
}

