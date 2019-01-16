resource "google_compute_subnetwork" "dev_subnet"{
  ip_cidr_range ="10.0.1.0/24"
  name = "devsubnet"
  network = "${google_compute_network.our_dev_network.self_link}"
  region = "asia-east1"
}