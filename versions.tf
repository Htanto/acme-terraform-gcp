terraform {

  cloud {
    organization = "acme-hendra"

    workspaces {
      name = "acme-terraform-gcp"
    }
  }

  required_providers {
    google = {
      source = "hashicorp/google"
      version = "3.5.0"
    }
  }
}