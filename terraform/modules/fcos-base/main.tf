terraform {
  required_version = ">= 0.13"
  required_providers {
    libvirt = {
      source  = "dmacvicar/libvirt"
      # version = "0.6.11"
    }
  }
}

resource "libvirt_volume" "fcos_base_rootfs" {
    source = "file:///Users/borisassogba/Documents/devops/testing-fcos/fedora-coreos.qcow2"
    name = "fedora-coreos.qcow2"
    pool = var.pool
    format = "qcow2"
}
