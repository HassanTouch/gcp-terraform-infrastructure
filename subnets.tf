resource "google_compute_subnetwork" "management-subnet" {
  name          = "management-subnet"
  ip_cidr_range = "10.0.0.0/16"
  region        = "asia-east1"
  network       = google_compute_network.vpc_gcp.id


}


resource "google_compute_subnetwork" "restricted-subnet" {
  name                     = "restricted-subnet"
  ip_cidr_range            = "10.2.0.0/16"
  region                   = "asia-east1"
  network                  = google_compute_network.vpc_gcp.id
  private_ip_google_access = true


}