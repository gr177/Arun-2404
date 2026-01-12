terraform {
backend "gcs" {
    bucket = "my-terraform-state-bucket346"
    prefix = "gcp/vm"
}
}
 