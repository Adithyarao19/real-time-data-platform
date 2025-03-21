output "gke_cluster_name" {
  description = "The name of the GKE cluster created"
  value       = google_container_cluster.gke_cluster.name
}

output "vpc_network_name" {
  description = "The name of the VPC network created"
  value       = google_compute_network.vpc_network.name
}