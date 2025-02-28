# Nom du bucket
output "bucket_name" {
  value = google_storage_bucket.bucket.name
}

# Adresse email du service account
output "service_account_email" {
  value = google_service_account.service_account.email
}

# URL de l'application Cloud Run
output "service_url" {
  value = google_cloud_run_service.service.status[0].url
}