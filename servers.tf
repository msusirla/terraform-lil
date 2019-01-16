resource "google_compute_instance" "firstserver" {
  "boot_disk" {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }
  machine_type = "n1-standard-1"
  name = "thefirstserver"
  zone = "asia-east1-b"
  "network_interface" {
    subnetwork = "${google_compute_subnetwork.dev_subnet.name}"

    access_config {
    }
  }
  metadata {
    foo = "bar"
  }
  service_account {
    scopes = ["userinfo-email","compute-ro","storage-ro"]
  }
}