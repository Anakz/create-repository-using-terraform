variable "github_token" {}

# github_repository resource
variable "name" {
    default = "my-first-repo-using-terraform-v2"
}
variable "description" {
    default = "My awesome description"
}
variable "visibility" {
    default = "public"
}

# github_branch resource
variable "branch" {
    default = ["k8s", "helm", "helmfile", "master"]
}
variable "default_branch" {
    default = "master"
}