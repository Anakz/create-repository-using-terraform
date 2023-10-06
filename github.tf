resource "github_repository" "first_repo_example" {
  name        = var.name
  description = var.description
  visibility  = var.visibility
}

resource "github_branch_default" "default"{
  repository = github_repository.first_repo_example.name
  branch     = var.default_branch
}

resource "null_resource" "setup_repo" {
  triggers = {
    repo_name = github_repository.first_repo_example.name
  }

  provisioner "local-exec" {
    command = "./setup_repo.sh ${github_repository.first_repo_example.html_url}"
  }
}


resource "github_branch" "development" {
  repository = github_repository.first_repo_example.name
  branch     = var.branch
  depends_on = [null_resource.setup_repo]
}