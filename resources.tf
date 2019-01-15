resource "google_compute_network" "our_dev_network"{
name = "devnetwork"
auto_create_subnetworks = true
}
