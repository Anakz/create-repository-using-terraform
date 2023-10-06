terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 5.0"
    }
  }
}
provider "github" {
  token = "ghp_yu3Yx2LikDGz73yjeSxF5BYj6NRIR2mrE5y"
}

resource "github_repository" "example" {
  name        = "my-first-repo-using-terraform"
  description = "My awesome codebase"
  visibility  = "public"
}