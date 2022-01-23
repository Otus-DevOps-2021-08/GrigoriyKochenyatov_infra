provider "yandex" {
  service_account_key_file = var.service_account_key_file
  cloud_id                 = var.cloud_id
  folder_id                = var.folder_id
  zone                     = var.zone
}


module "app" {
  user_meta_path  = var.user_meta_path
  public_key_path = var.public_key_path

  source         = "../modules/app"
  app_disk_image = var.app_disk_image
  subnet_id      = var.subnet_id
}
module "db" {
  user_meta_path  = var.user_meta_path
  public_key_path = var.public_key_path

  source        = "../modules/db"
  db_disk_image = var.db_disk_image
  subnet_id     = var.subnet_id
}


