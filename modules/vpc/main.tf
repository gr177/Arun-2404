resource "google_compute_network" "arun" {
  project = var.project_id
  name    = var.vpc_name
  auto_create_subnetworks = var.auto_create_subnetworks
}
resource "google_compute_subnetwork" "arun" {
  project       = var.project_id
  name          = "${var.vpc_name}-subnet"
  region        = var.region
  network       = google_compute_network.arun.id
  ip_cidr_range = var.ip_cidr_range
}