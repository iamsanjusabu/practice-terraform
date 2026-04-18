terraform {
  required_providers {
    // local_file
    // local_sensitive_file
    local = {
      source  = "hashicorp/local"
      version = "~> 2.8.0"
    }
  }
}