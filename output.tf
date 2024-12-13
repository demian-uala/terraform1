# output "reserved_ip_address" {
#   value       = module.load_balancer.reserved_ip_address
#   description = "IP estática reservada y asignada al Load Balancer"
# }

# output "load_balancer_ip" {
#   value       = module.load_balancer.load_balancer_ip
#   description = "IP del Load Balancer asignada desde la IP estática"
# }

output "cloud_run_service_name" {
  value       = google_cloud_run_service.default.name
  description = "Nombre del servicio de Cloud Run"
}

output "cloud_run_url" {
  value       = google_cloud_run_service.default.status[0].url
  description = "Dirección URL del servicio de Cloud Run"
}
