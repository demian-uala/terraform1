output "reserved_ip_address" {
  value       = module.lb-http.external_ip
  description = "IP estática reservada y asignada al Load Balancer"
}

output "cloud_run_service_name" {
  value       = google_cloud_run_service.default.name
  description = "Nombre del servicio de Cloud Run"
}

output "cloud_run_url" {
  value       = google_cloud_run_service.default.status[0].url
  description = "Dirección URL del servicio de Cloud Run"
}
