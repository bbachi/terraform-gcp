resource "random_id" "id" {
  byte_length = 4
}

provider "google" {
  project = var.projectId
  region  = var.region
}

resource "google_storage_bucket" "mystorage" {
  name     = "${var.storage_bucket_name}${random_id.id.hex}"
  storage_class = "MULTI_REGIONAL"
}

output "bucket_name" {
  value = google_storage_bucket.mystorage.name
}