# Proyecto y región
variable "project_id" {
  type        = string
  description = "ID del proyecto en GCP"
}

variable "region" {
  description = "Ubicación para recursos del balanceador de carga y Cloud Run"
  default     = "us-central1"
}

# Variables del Load Balancer
variable "load_balancer_name" {
  description = "Nombre para el balanceador de carga y recursos asociados"
  type        = string
  default     = "load_balancer-1"
}

variable "load_balancer_ssl" {
  description = "Habilitar HTTPS en el balanceador de carga y provisionar un certificado gestionado con el dominio proporcionado"
  type        = bool
  default     = false
}

variable "load_balancer_domain" {
  description = "Nombre de dominio para ejecutar el balanceador de carga. Se usa si `load_balancer_ssl` está habilitado."
  type        = string
  default     = "domain.com"
}

# Variables de Cloud Run
variable "cloud_run_name" {
  description = "Nombre de la instancia de Cloud Run"
  type        = string
  default     = "cloud-run-1"
}

variable "cloud_run_image" {
  description = "Imagen Docker para la instancia de Cloud Run"
  type        = string
  default     = "gcr.io/cloudrun/hello"
}

