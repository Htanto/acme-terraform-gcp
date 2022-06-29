provider "google" {
  project = "f5-gcs-4261-sales-apcj-asean"
  region  = "asia-southeast1"
  zone    = "asia-southeast1-a"
}

resource "google_compute_instance" "vm_instance" {
  name         = "hendra-instance"
  machine_type = "e2-micro"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  network_interface {
    # A default network is created for all GCP projects
    network = google_compute_network.vpc_network.self_link
    access_config {
    }
  }
}

resource "google_compute_network" "vpc_network" {
  name                    = "terraform-network"
  auto_create_subnetworks = "true"
}