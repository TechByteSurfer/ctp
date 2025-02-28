# Creation du bucket
resource "google_storage_bucket" "bucket" {
  name = var.bucket_name
  location = var.region
  project = var.project_id
} 

# Creation du service account
resource "google_service_account" "service_account" {
  account_id = var.service_account_name
  project = var.project_id
  display_name = var.service_account_name
}

# Ressource IAM pour attribution des droits au SA
# Ajout des droits d'acces au Cloud Storage
resource "google_project_iam_member" "storage" {
  project = var.project_id
  role = "roles/storage.admin"
  member = "serviceAccount:${google_service_account.service_account.email}"
}

# Ajout des droits d'acces a Cloud Run
resource "google_project_iam_member" "run" {
  project = var.project_id
  role = "roles/run.admin"
  member = "serviceAccount:${google_service_account.service_account.email}"
}

# Ajout des droits d'acces a Cloud Build
resource "google_project_iam_member" "build" {
  project = var.project_id
  role = "roles/cloudbuild.builds.editor"
  member = "serviceAccount:${google_service_account.service_account.email}"
}

# Ressource pour déployer l’application sur Cloud Run
# avec l’image Docker déjà présente sur GCR
resource "google_cloud_run_service" "service" {
  name = var.service_account_name
  location = var.region
  project = var.project_id
  template {
    spec {
      containers {
        image = "gcr.io/${var.project_id}/${var.docker_image_name}"
      }
    }
  }

  traffic {
    percent = 100
    latest_revision = true
  }
}

data "google_iam_policy" "noauth" {
  binding {
    role = "roles/run.invoker"
    members = [
      "allUsers",
    ]
  }
}

resource "google_cloud_run_service_iam_policy" "noauth" {
  location    = google_cloud_run_service.service.location
  project     = google_cloud_run_service.service.project
  service     = google_cloud_run_service.service.name

  policy_data = data.google_iam_policy.noauth.policy_data
}