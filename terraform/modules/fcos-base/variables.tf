variable "fcos_stream" {
    type = string
    description = "The FCOS stream to deploy"
}

variable "pool" {
    type = string
    description = "Pool to download files to."
    default = "ssd"
}
