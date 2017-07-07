############################################################################
#  Elastic LoadBalancer
#
#  Version 1.0
#  Date 28-06-2016
#
#  Outline: Builds ELB for website frontend
#
############################################################################

#module "https_elb" {
#  source = "github.com/terraform-community-modules/tf_aws_elb/elb_https"
#  elb_name = "${var.elb_name}"
#  subnet_az1 = "${module.shcc.public_subnets[0]}"
#  subnet_az2 = "${module.shcc.public_subnets[1]}"
#  backend_port = "${var.elb_backend_port}"
#  backend_protocol = "${var.elb_backend_protocol}"
#  health_check_target = "${var.health_check_target}"
#  aws_access_key = "${var.aws_access_key}"
#  aws_secret_key = "${var.aws_secret_key}"
#  aws_region = "${var.gen_aws_region}"
#}

module "http_elb" {
  source = "github.com/terraform-community-modules/tf_aws_elb/elb_http"
  elb_name = "${var.elb_name}"
  subnet_az1 = "${module.shcc.public_subnets[0]}"
  subnet_az2 = "${module.shcc.public_subnets[1]}"
  backend_port = "${var.elb_backend_port}"
  backend_protocol = "${var.elb_backend_protocol}"
  health_check_target = "${var.elb_health_check_target}"
  aws_access_key = "${var.aws_access_key}"
  aws_secret_key = "${var.aws_secret_key}"
  aws_region = "${var.gen_aws_region}"
  elb_security_group = "${module.elb_sg.security_group_id_web}"
}
