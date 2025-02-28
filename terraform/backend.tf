terraform {
    backend "gcs" {
        bucket = "tfstate-ctp-hv"
        prefix = "terraform/state"
    }
}