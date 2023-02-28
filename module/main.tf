resource "google_artifact_registry_repository" "my-repo" {
  location      = var.artifact-config["location"]
  repository_id = var.artifact-config["repository_id"]
  description   = "Created by terraform"
  format        = "DOCKER"
}

variable "artifact-config" {
  type        = map(any)
  description = "Please provide configuration for artifact"
  default = {
    repository_id = "my-repository"
    location      = "us-central1"
  }
}