############################################################################
#  RDS
#
#  Version 1.0
#  Date 18-07-2017
#
#  Outline: Database configuration
#
############################################################################


module "rds" {
  source = "github.com/terraform-community-modules/tf_aws_rds"

    # RDS Instance Inputs
    rds_instance_identifier = "${var.rds_instance_identifier}"
    rds_allocated_storage = "${var.rds_allocated_storage}"
    rds_engine_type = "${var.rds_engine_type}"
    rds_instance_class = "${var.rds_instance_class}"
    rds_engine_version = "${var.rds_engine_version}"
    db_parameter_group = "${var.db_parameter_group}"

    database_name = "${var.database_name}"
    database_user = "${var.database_user}"
    database_password = "${var.database_password}"
    database_port = "${var.database_port}"

    # DB Subnet Group Inputs
    subnets = "${module.shcc.private_subnets}"
    rds_vpc_id = "${module.shcc.vpc_id}"
    private_cidr = "${var.vpc_private_subnet}"

    tags {
      "environment" = "${lookup(var.tags,"gen_tag_environment")}"
      "customer" = "${lookup(var.tags,"gen_tag_customer")}"
      "project" = "${lookup(var.tags,"gen_tag_project")}"
      "builder" = "${lookup(var.tags,"created_by")}"
      "created_by" = "${lookup(var.tags,"created_by")}"
    }
}
output "RDS_url" {
  value = "${module.rds.rds_instance_address}"
}
