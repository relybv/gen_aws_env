terraform {
  backend "s3" {
    bucket = "terraform-state-shcc"
    key    = "terraform/test"
  }
}
