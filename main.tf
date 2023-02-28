module "my-repository" {
  source = "terraform-registry-demo/my-repository"
  artifact-config = {
    repository_id = "my-repo"
    location      = "us-central1"
  }
}
