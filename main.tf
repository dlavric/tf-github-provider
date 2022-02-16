terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "4.20.0"
    }
  }
}

provider "github" {
  token = var.token
}


resource "github_repository" "example" {
  name        = var.repository
  description = var.repo_description

  visibility = "public"
}

