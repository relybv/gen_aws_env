############################################################################
#  Webserver instances
#
#  Version 1.0
#  Date 28-06-2017
#
#  Outline: creates VPC with two subnets (public/private)
#
############################################################################
module "shcc" {
  source = "github.com/terraform-community-modules/tf_aws_vpc"
  name = "${var.vpc_name}"
  cidr = "${var.vpc_cidr}"
  private_subnets = "${var.vpc_private_subnet}"
  public_subnets  = "${var.vpc_public_subnet}"
  enable_nat_gateway = "${var.vpc_nat_enable}"
  azs = "${var.vpc_zones}"
  enable_dns_hostnames = "true"
  enable_dns_support = "true"
  tags {
    "environment" = "${lookup(var.tags,"gen_tag_environment")}"
    "customer" = "${lookup(var.tags,"gen_tag_customer")}"
    "project" = "${lookup(var.tags,"gen_tag_project")}"
    "builder" = "${lookup(var.tags,"created_by")}"
    "created_by" = "${lookup(var.tags,"created_by")}"
  }
}
