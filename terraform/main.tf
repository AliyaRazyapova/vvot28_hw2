terraform {
  required_providers {
    yandex = {
      source  = "yandex-cloud/yandex"
      version = ">= 0.13"
    }
  }
}

locals {
  service_account_id = jsondecode(file("key.json")).service_account_id
}

provider "yandex" {
  service_account_key_file = "key.json"
  cloud_id                 = var.cloud_id
  folder_id                = var.folder_id
  zone                     = var.zone
}

resource "yandex_storage_bucket" "bucket" {
  bucket = var.bucket_name
  acl    = "private"
  max_size = 50 * 1024 * 1024 * 1024
}
