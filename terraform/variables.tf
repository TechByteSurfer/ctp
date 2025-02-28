variable "project_id" {
  description = "Project ID"
  type = string
  default = "melodic-media-443908-f6"
}

variable "region" {
  description = "Region"
  type = string
  default = "europe-west10"
}

variable "zone" {
  description = "Zone"
  type = string
  default = "europe-west10-a"
}

variable "bucket_name" {
  description = "Bucket Name"
  type = string
  default = "hugoat"
}

variable "service_account_name" {
  description = "Service Account"
  type = string
  default = "python-note"
}

variable "docker_image_name" {
  description = "Nom de l'image Docker"
  type = string
  default = "flask-app"
}