provider "google" {
  project     = "proud-climber-469712-j0"
  region      = "us-central1"
  credentials = ".github/workflows/terraform.yml"
}
resource "google_compute_instance" "default" {
  name         = "my-vm"
  machine_type = "n1-standard-1"
  zone         = "us-central1-a"

  boot_disk {
    initialize_params {
      image = "ubuntu-latest"
    }
  }

  network_interface {
    network = "default"
    access_config {}
  }
}