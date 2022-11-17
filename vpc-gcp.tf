resource "google_compute_network" "vpc_gcp" {

  name                    = "vpc-gcp"
  mtu                     = 1460
  auto_create_subnetworks = false
}