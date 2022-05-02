
provider "google" {
project = "manifest-life-344205"
region = "us-central1"
access_token = "ya29.A0ARrdaM-8cpVUhcCIVpCJ-UUBp-w99i61nBTCOaAdUL0Wz7VSgbY_XdTLtyslU-_lH5Lk8n_v2inlXWR8RudazE7yskTWP1fBbNKYZfnw3bCRBUF9X-pEcPT1L7h4ED6-o7dfqBE6imixWnVUmYEfuwLkomFldZ7e_J_uBg"
}
resource "google_compute_instance" "default2" {
name = "default2"
 machine_type = "e2-micro"
 zone = "asia-south1-c"
 metadata_startup_script = "sudo apt update && sudo apt install apache2"
 boot_disk {
 initialize_params {
 image = "debian-cloud/debian-9"
 }
 }
 network_interface {
 network = "default"
 access_config { 
 }
 }
}

