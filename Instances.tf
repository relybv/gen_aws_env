############################################################################
#  Webserver instances
#
#  Version 1.0
#  Date 28-06-2016
#
#  Outline: Builds webserver instance
#
############################################################################

module "webserver" {
  source = "github.com/terraform-community-modules/tf_aws_ec2_instance"
  instance_type = "${var.ec2_webserver_instance_type}"
  instance_name = "${var.ec2_webserver_instance_name}"
  ami_id = "${var.ec2_webserver_ami_id}"
  aws_access_key = "${var.aws_access_key}"
  aws_secret_key = "${var.aws_secret_key}"
  aws_region = "${var.gen_aws_region}"
  subnet_id = "${module.vpc.public_subnets[0]}"
  number_of_instances = "${var.ec2_webserver_instance_count}"
  user_data = "${var.ec2_webserver_userdata}"
  tags {
    "environment" = "${lookup(var.tags,"gen_tag_environment")}"
    "customer" = "${lookup(var.tags,"gen_tag_customer")}"
    "project" = "${lookup(var.tags,"gen_tag_project")}"
    "builder" = "${lookup(var.tags,"created_by")}"
    "created_by" = "${lookup(var.tags,"created_by")}"
  }
}
