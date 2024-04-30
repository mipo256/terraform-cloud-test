terraform {
  required_providers {
    yandex = {
      source  = "yandex-cloud/yandex"
      version = "0.114.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.6.0"
    }
  }

  backend "s3" {
    endpoints = {
      s3 = "http://storage.yandexcloud.net"
    }
    skip_region_validation      = true
    skip_credentials_validation = true
    skip_s3_checksum            = true
    skip_requesting_account_id  = true
  }

  required_version = "~> 1.8.0"
}

provider "yandex" {
  token     = var.token
  cloud_id  = var.cloud_id
  folder_id = var.folder_id
  zone      = var.zone_id
}
