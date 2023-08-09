terraform {
  required_version = ">= 0.13"
  required_providers {
    libvirt = {
      source  = "dmacvicar/libvirt"
      # version = "0.6.2"
    }
  }
}

provider "libvirt" {
  uri = "qemu+ssh://${var.user}@${var.host}/system"
}

module "fcos_base" {
  source = "../modules/fcos-base"

  fcos_stream = var.coreos_stream
}

module "stacks_testing-fcos" {
  source = "../modules/testing-fcos"

  root_pool      = "ssd"
  ign_pool       = "ssd"
  root_disk_size = var.testing-fcos_root_disk_size
  ign_file       = file("${path.module}/../../config/testing-fcos.ign")
  mac_addr       = var.testing-fcos_mac_addr
  bridge_name    = "ocpnet"
  fcos_stream  	 = var.coreos_stream
  rootfs         = module.fcos_base.fcos_base_rootfs

  host            = var.host
  # ssh_private_key = file(var.ssh_private_key_path)
}
