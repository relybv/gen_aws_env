############################################################################
#  User data
#
#  Version 1.0
#  Date 18-07-2017
#
#  Outline: User data resource from template file
#
#  todo: Depricated; change to data source
#
############################################################################
resource "template_file" "webserver" {
    template = "${file("webserver.tpl")}"
    vars {
      storage_ip ="${module.efs_mount.mount_address}"
    }
}
