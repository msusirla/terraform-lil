provider "google" {
credentials = "${file("../account.json")}"
project = "eighth-sensor-226515"
region = "asia-east1"
}
