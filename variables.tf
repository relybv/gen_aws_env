############### Generic definitions ###############

# specify customer and environment
variable "gen_customer" {
    default = "shcc_test"
}

variable "gen_environment" {
    default = "test"
}

variable "gen_aws_region_name" {
  default     = "frankfurt"
}

variable "gen_aws_region" {
  default     = "eu-central-1"
}

# specify external domain base
variable "gen_domain_base" {
    default = "openstack.rely.nl"
}

# specify AWS credentials as 'export TF_VAR_aws_access_key=<accesskey>; export TF_VAR_aws_secret_key=<secretkey>'
variable "aws_access_key" {}
variable "aws_secret_key" {}

############### Tag definitions ###############
variable "tags" {
  default = {
    created_by = "patrick"
    gen_tag_customer = "shcc"
    gen_tag_project = "production"
    gen_tag_environment = "test"
  }
 }
############### Swift definitions ###############
variable "swift_bucket_name" {
    default = "terraform-state-dirict-acc"
}
variable "swift_key" {
    default = "/tfpatrick.tfstate"
}
variable "swift_region" {
    default = "eu-central-1"
}

############### VPC module ###############
variable "vpc_name" {
    default = "testvpc"
}
variable "vpc_cidr" {
    default = "172.10.0.0/16"
}
variable "vpc_private_subnet" {
    default = ["172.10.1.0/24"]
}
variable "vpc_public_subnet" {
    default = ["172.10.10.0/24"]
}
variable "vpc_nat_enable" {
    default = "true"
}
variable "vpc_zones" {
    default = ["eu-central-1a", "eu-central-1b", "eu-central-1c"]
}

############### Public Subnet module ###############
variable "pub_subnet_name" {
    default = "frontnet"
}
variable "front_cidr" {
    default = "172.10.0.0/16"
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
############### Storage device definitions ###############
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
