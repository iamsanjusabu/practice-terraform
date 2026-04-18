terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.8.0"
    }
  }

  backend "local" {
    path = "statefiles/terraform.tfstate"
  }
}