output "output_github_repository" {
  value = github_repository.first_repo_example
}
output "output_github_repository_url" {
  value = github_repository.first_repo_example.html_url
}
output "output_github_repository_ssh_clone_url" {
  value = github_repository.first_repo_example.ssh_clone_url
}