############################################################################
#  Variables
#
#  Version 1.0
#  Date 28-06-2016
#
#  Outline: All customer variables
#
############################################################################

############### Generic definitions ###############
variable "gen_customer" {
    default = "aws_test"
}
variable "gen_environment" {
    default = "test"
}
variable "gen_aws_region_name" {
  default     = "ireland"
}
variable "gen_aws_region" {
  default     = "eu-west-1"
}
variable "gen_ssl_certificate_id" {
    default = "aws-test"
}
variable "gen_key_name" {
    default = "patrick"
}
# specify AWS credentials as 'export TF_VAR_aws_access_key=<accesskey>; export TF_VAR_aws_secret_key=<secretkey>'
variable "aws_access_key" {}
variable "aws_secret_key" {}
############### Tag definitions ###############
variable "tags" {
  default = {
    created_by = "patrick"
    gen_tag_customer = "Claranet"
    gen_tag_project = "demo"
    gen_tag_environment = "test"
  }
 }
############### VPC module ###############
variable "vpc_name" {
    default = "testvpc"
}
variable "vpc_cidr" {
    default = "172.10.0.0/16"
}
variable "vpc_private_subnet" {
    default = ["172.10.1.0/24","172.10.2.0/24","172.10.3.0/24"]
}
variable "vpc_public_subnet" {
    default = ["172.10.10.0/24","172.10.20.0/24","172.10.30.0/24"]
}
variable "vpc_nat_enable" {
    default = "false"
}
variable "vpc_zones" {
    default = ["eu-west-1a", "eu-west-1b","eu-west-1c"]
}
############### Public Subnet module ###############
variable "pub_subnet_name" {
    default = "frontnet"
}
variable "front_cidr" {
    default = "172.10.0.0/16"
}
############### Security group module ###############
variable "security_group_name" {
    default = "shcc-sg"
}
############### ELB module ###############
variable "elb_name" {
    default = "shcc"
}
variable "elb_backend_port" {
    default = "80"
}
variable "elb_backend_protocol" {
    default = "http"
}
variable "elb_health_check_target" {
    default = "tcp:80"
}
variable "elb_health_check_type" {
    default = "EC2"
}
variable "elb_internal" {
  default = "false"
}
############### Auto scaling group module ###############
variable "asg_lc_name" {
    default = "webfront"
}
variable "asg_ami_id" {
    default = "ami-ef937196"
}
variable "asg_instance_type" {
    default = "t2.micro"
}
variable "asg_iam_instance_profile" {
    default = "arn:aws:iam::300369274369:instance-profile/Mys3admin"
}
variable "asg_webserver_userdata" {
    default = "webserver.tpl"
}
variable "asg_name" {
    default = "webservers"
}
variable "asg_number_of_instances" {
    default = "1"
}
variable "asg_minimum_number_of_instances" {
    default = "1"
}
variable "asg_subnets" {
    default = "eu-west-1a,eu-west-1b"
}
############### EC2 Webserver Instance module ###############
variable "ec2_webserver_instance_type" {
    default = "t2.micro"
}
variable "ec2_webserver_instance_name" {
    default = "webserver"
}
variable "ec2_webserver_ami_id" {
    default = "ami-82be18ed"
}
variable "ec2_webserver_instance_count" {
    default = "1"
}
variable "ec2_webserver_userdata" {
    default = "webserver-userdata.sh"
}
############### RDS Database module ###############
variable "rds_instance_identifier" {
    default = "shcc-test-database"
}
variable "rds_allocated_storage" {
    default = "5"
}
variable "rds_engine_type" {
    default = "MySQL"
}
variable "rds_instance_class" {
    default = "db.t2.micro"
}
variable "rds_engine_version" {
    default = "5.6.35"
}
variable "db_parameter_group" {
    default = "mysql5.6"
}
variable "database_name" {
    default = "test"
}
variable "database_user" {
    default = "shcctest"
}
variable "database_password" {
    default = "Changeme!"
}
variable "database_port" {
    default = "3306"
}
############### Storage device definitions ###############
variable "efs_name" {
    default = "webstore"
}
variable "web_gb" {
    default = 20
}
############### Instance device definitions ###############
variable "webserver_size" {
  default   = "t2.large"
}
############### User definitions ###############
variable "lb_username" {
    default = "ubuntu"
}
############### Hostnames ###############
variable "web1_hostname" {
    default = "web1"
}
variable "web2_hostname" {
    default = "web2"
}
############### adjust as needed ###############
