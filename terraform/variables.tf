variable cloud_id {
  description = "Cloud"
}
variable folder_id {
  description = "Folder"
}

variable zone {
  description = "Zone"
  # Значение по умолчанию
  default = "ru-central1-b"
}

variable public_key_path {
  description = "Path to the public key used for ssh access"
}
variable private_key_path {
  description = "Path to the !PRIVATE! key used for ssh access"
}
variable service_account_key_file {
  description = "Path to the yandex service-key file"
}


variable image_id {
  description = "Disk image"
}
variable subnet_id {
  description = "Subnet"
}
variable service_account_key_file {
  description = "key.json"
}
variable nat_ip_address {
  description = "External reserved IP for NAT"
}
