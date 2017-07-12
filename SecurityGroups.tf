############################################################################
#  Security Groups
#
#  Version 1.0
#  Date 28-06-2016
#
#  Outline: Creates various security groups
#
############################################################################

#module "https_sg" {
#  source = "github.com/terraform-community-modules/tf_aws_sg/sg_https_only"
#  security_group_name = "${var.security_group_name}-https"
#  vpc_id = "${module.shcc.vpc_id}"
#  #source_cidr_block = "${module.shcc.public_subnets[0]}"
#  source_cidr_block = "0.0.0.0/0"
#}

#module "ssh_sg" {
#  source = "github.com/terraform-community-modules/tf_aws_sg/sg_ssh"
#  security_group_name = "${var.security_group_name}-ssh"
#  vpc_id = "${module.shcc.vpc_id}"
#  #source_cidr_block = "${module.shcc.public_subnets[0]}"
#  source_cidr_block = "0.0.0.0/0"
#}

module "elb_sg" {
  source = "github.com/terraform-community-modules/tf_aws_sg/sg_web"
  security_group_name = "${var.security_group_name}-elb"
  vpc_id = "${module.shcc.vpc_id}"
  #source_cidr_block = "${module.shcc.public_subnets[0]}"
  source_cidr_block = ["0.0.0.0/0"]
}
