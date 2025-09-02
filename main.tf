provider "google" {
  project     = "proud-climber-469712-j0"
  region      = "us-central1"
  credentials = ".github/workflows/terraform.yml"
}
resource "google_storage_bucket" "static" {
  name          = "test_bucket"
  location      = "US"
  storage_class = "STANDARD"
  uniform_bucket_level_access = true
}