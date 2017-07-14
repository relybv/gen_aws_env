############################################################################
#  Storages
#
#  Version 1.0
#  Date 12-07-2016
#
#  Outline: Various storage definitions
#
############################################################################

module "efs_mount" {
  source = "github.com/relybv/aws_efs_module"

  name    = "${var.efs_name}"
  subnets = "${module.shcc.public_subnets[2]}"
  vpc_id  = "${module.shcc.vpc_id}"
  vpc_net_cidr = "${var.vpc_public_subnet}"
}

output "targets" {
  value = "${module.efs_mount.mount_target_ids}"
}
output "interfaces" {
  value = "${module.efs_mount.mount_target_interface_ids}"
}
output "ip_address" {
  value = "${module.efs_mount.mount_address}"
}
