resource "template_file" "webserver" {
    template = "${file("webserver.tpl")}"
    vars {
      storage_ip ="${module.efs_mount.mount_address}"
    }
}
