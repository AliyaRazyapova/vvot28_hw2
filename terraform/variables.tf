variable "cloud_id" {
  type        = string
  description = "ID облака"
}

variable "folder_id" {
  type        = string
  description = "ID папки"
}

variable "zone" {
  type        = string
  description = "Зона"
}

variable "bucket_name" {
  type        = string
  description = "Название бакета"
}

resource "yandex_storage_bucket" "tg_bot_bucket" {
  bucket = var.bucket_name
}

variable "tg_key" {
  type        = string
  description = "API tg бота"
}

variable "user_hash" {
  description = "Уникальный идентификатор пользователя"
  type        = string
}

variable "gateway" {
  type        = string
  description = "Название API Gateway"
}

variable "sa_key_file_path" {
  type        = string
  description = "Путь к ключу сервисного аккаунта с ролью admin"
  default     = "key.json"
}
