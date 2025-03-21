# Set up the Google Cloud provider
provider "google" {
  project = var.project_id
  region  = var.region
}

# Create a GKE cluster
resource "google_container_cluster" "gke_cluster" {
  name     = "real-time-data-cluster"
  location = var.region

  # Remove the default node pool to customize it
  remove_default_node_pool = true
  initial_node_count       = 1

  # Add a custom node pool with autoscaling
  node_pool {
    name       = "default-pool"
    node_count = 2

    autoscaling {
      min_node_count = 1
      max_node_count = 5
    }

    node_config {
      machine_type = "e2-medium" # Cost-efficient machine type
    }
  }
}

# Create a VPC network
resource "google_compute_network" "vpc_network" {
  name = "real-time-data-vpc"
}

# Create a storage bucket for logs
resource "google_storage_bucket" "logs_bucket" {
  name     = "${var.project_id}-logs-bucket"
  location = var.region
}