############################################################################
#  Webserver instances
#
#  Version 1.0
#  Date 28-06-2016
#
#  Outline: Builds webserver instance
#
############################################################################

module "ec2_instance" {
  source = "github.com/terraform-community-modules/tf_aws_ec2_instance"
  instance_type = "${var.ec2_webserver_instance_type}"
  instance_name = "${var.ec2_webserver_instance_name}"
  ami_id = "${var.ec2_webserver_ami_id}"
  aws_access_key = "${var.aws_access_key}"
  aws_secret_key = "${var.aws_secret_key}"
  aws_region = "${var.gen_aws_region}"
  subnet_id = "${var.subnet_id}"
  number_of_instances = "${var.ec2_webserver_instance_count}"
  user_data = "${var.ec2_webserver_userdata}"
  tags {
    "environment" = "${var.gen_tag_environment}"
    "customer" = "${var.gen_tag_customer}"
    "project" = "${var.gen_tag_project}"
    "created by" = "${var.gen_tag_createdby}"
  }
}
