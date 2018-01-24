terraform {
  backend "s3" {
    bucket = "terraform-state-test"
    key    = "terraform/test"
  }
}
