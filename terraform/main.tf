provider "yandex" {
  service_account_key_file = "/root/otus/secrets/terraform-key.json"
  cloud_id  = "b1gdvhgrk10cecrl5eih"
  folder_id = "b1gkcgs09c6egu8mr20k"
  zone      = "ru-central1-b"
}
resource "yandex_compute_instance" "app" {
  name = "reddit-app"
  resources {
    cores = 2
    memory = 2
  }
  boot_disk {
    initialize_params {
     # Указать id образа созданного в предыдущем домашнем задании
     image_id = "fd8bm3j0j920015s8ja9"
    }
  }
  network_interface {
    # Указан id подсети default-ru-central1-b
    subnet_id = "e2ljna1je7aauvkdsvck"
    nat = true
  }
}