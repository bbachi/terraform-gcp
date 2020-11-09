terraform {
 backend "gcs" {
   bucket  = "test-terraform-admin"
   prefix  = "terraform/state"
 }
}