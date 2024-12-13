variable "project_id" {
  type = string
}

variable "region" {
  description = "Location for load balancer and Cloud Run resources"
  default     = "us-central1"
}

variable "load_balancer" {
  type = object({
    name = string
    ssl = bool
    domain = string
  })
  default = {
    name = "load-balancer-1"
    ssl = true
    domain = "domain-123123.com"
  }
  description = {
    name = "Name for load balancer and associated resources"
    ssl = "Run load balancer on HTTPS and provision managed certificate with provided `domain`."
    domain = "Domain name to run the load balancer on. Used if `ssl` is `true`."
  }
}

variable "cloud_run" {
  type = object({
    name = string
    image = string
  })
  default = {
    name = "cloud-run-1"
    image = "gcr.io/cloudrun/hello"
  }
  description = {
    name = "Name for cloud run instance."
    image = "Docker Image for cloud run instance."
  }
}
