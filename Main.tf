#
# AWS resources
#
# Configure the AWS Provider
provider "aws" {
    access_key = "${var.aws_access_key}"
    secret_key = "${var.aws_secret_key}"
    region = "${var.gen_aws_region}"
}

# Terraform.state stored on AWS S3
#resource "terraform_remote_state" "aws" {
#    backend = "s3"
#    config {
#        bucket = "${var.swift_bucket_name}"
#        key = "${var.swift_key}"
#        region = "${var.swift_region}"
#    }
#}
