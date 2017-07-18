############################################################################
#  Autoscaler Group definition
#
#  Version 1.0
#  Date 06-07-2017
#
#  Outline: The autoscaler group.
#
############################################################################

module "my_autoscaling_group" {
  source = "github.com/relybv/aws_asg_lc_module"
  lc_name = "${var.asg_lc_name}"
  ami_id = "${var.asg_ami_id}"
  instance_type = "${var.asg_instance_type}"
  iam_instance_profile = "${var.asg_iam_instance_profile}"
  key_name = "${var.gen_key_name}"
  security_group = "${module.elb_sg.security_group_id_web}"
  user_data = "${template_file.webserver.rendered}"
  asg_name = "${var.asg_name}"
  asg_number_of_instances = "${var.asg_number_of_instances}"
  asg_minimum_number_of_instances = "${var.asg_minimum_number_of_instances}"
  load_balancer_names = "${module.http_elb.elb_name}"
  health_check_type = "${var.elb_health_check_type}"
  availability_zones = "${var.asg_subnets}"
  vpc_zone_subnets = "${module.shcc.public_subnets[0]},${module.shcc.public_subnets[1]}"
}
