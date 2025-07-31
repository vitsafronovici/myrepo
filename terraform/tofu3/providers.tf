
terraform {
  required_providers {
    awscc = {
      source  = "registry.opentofu.org/hashicorp/awscc"
      version = "~> 0.1"
    }
  }
}


provider "awscc" {
  region = "us-east-1"
  alias  = "awsccuse1"
}

