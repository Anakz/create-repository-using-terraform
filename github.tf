resource "github_repository" "first_repo_example" {
  name        = var.name
  description = var.description
  visibility  = var.visibility
  auto_init   = true
}

resource "github_branch" "k8s-branch" {
  for_each = toset(var.branch)
  repository = github_repository.first_repo_example.name
  branch     = each.key
}

resource "github_branch_default" "default"{
  repository = github_repository.first_repo_example.name
  branch     = var.default_branch
}