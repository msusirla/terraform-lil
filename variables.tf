//GCP variables
variable "networkname" {
  type = "string"
  default = "newnet"
  description = "network name for GCP"
}

variable "gcp_ip_cidr_range" {
  type = "string"
  default = "10.0.0.0/16"
  description = "IP CIDR range for google VPC"
}

variable "subnetnames" {
  type = "map"
  default = {
    subnet1="sub1"
    subnet2="sub2"
    subnet3="sub3"
  }
}