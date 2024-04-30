variable "zone_id" {
  default     = "ru-central1-a"
  type        = string
  description = "default Yandex resources zone"
}

variable "folder_id" {
  default     = "b1go8fmcj1hvf0g4mg3t"
  type        = string
  description = "default Yandex resources zone"
}

variable "labels" {
  default = {
    env = "testing"
  }
  type = object({
    env = string
  })
}

variable "cloud_id" {}

variable "token" {}