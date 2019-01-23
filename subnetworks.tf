resource "google_compute_subnetwork" "dev_subnet"{
  //ip_cidr_range ="10.0.1.0/24" - this is without variables
  ip_cidr_range = "${var.gcp_ip_cidr_range}"
  name = "${var.subnetnames["subnet1"]}"
  network = "${google_compute_network.our_dev_network.self_link}"
  region = "asia-east1"
}