output "subnet_id" {
  description = "The self-link of the created subnetwork."
  value       = google_compute_subnetwork.arun.self_link
}