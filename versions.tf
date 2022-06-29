terraform {

  cloud {
    organization = "acme-hendra"

    workspaces {
      name = "learn-terraform-cloud-gcp"
    }
  }

  required_providers {
    google = {
      source = "hashicorp/google"
      version = "3.5.0"
    }
  }
}