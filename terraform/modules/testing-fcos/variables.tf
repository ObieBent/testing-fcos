variable "fcos_stream" {
    type = string
    description = "FCOS stream to deploy."
}

variable "root_pool" {
    type = string
    description = "Pool to create root disk in."
    default = "default"
}

variable "ign_pool" {
    type = string
    description = "Pool to create ignition files in."
    default = "default"
}

variable "ign_file" {
    description = "Ignition file to copy to virt host."
    default = "testing-fcos.ign"
    type = string
}

variable "mac_addr" {
    type = string
    description = "MAC addresses of testing-fcos VM."
}

variable "root_disk_size" {
    type = number
    description = "Size in bytes to allocate for root disk"
    default = 21474836480
}

variable "bridge_name" {
    type = string
    description = "Name of bridge interface to create network access on"
}

variable "rootfs" {
    type = string
    description = "libvirt volume rootfs id"
}

variable "host" {
    type = string
    description = "hostname of libvirt virt host"
}

# variable "ssh_private_key" {
#     type = string
#     description = "SSH private key file"
# }
