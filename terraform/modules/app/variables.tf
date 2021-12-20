variable public_key_path {
  description = "Path to the public key used for ssh access"
}

variable user_meta_path {
  description = "Path to meta-file"
}
variable app_disk_image {
  description = "Disk image for reddit app"
  default     = "reddit-app-base"
}
variable subnet_id {
  description = "Subnets for modules"
}
