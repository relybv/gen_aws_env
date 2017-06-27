module "vpc" {
  source = "github.com/terraform-community-modules/tf_aws_vpc"

  name = "${var.vpc_name}"

  cidr = "${var.vpc_cidr}"
  private_subnets = "${var.vpc_private_subnet}"
  public_subnets  = "${var.vpc_public_subnet}"

  enable_nat_gateway = "${var.vpc_nat_enable}"

  azs      = "${var.vpc_zones}"

  tags {
    "environment" = "${var.gen_tag_environment}"
    "customer" = "${var.gen_tag_customer}"
    "project" = "${var.gen_tag_project}"
    "created by" = "${var.gen_tag_createdby}"
  }
}
