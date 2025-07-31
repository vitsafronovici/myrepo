
terraform {
  required_providers {
    aws = {
      source  = "registry.opentofu.org/hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

# #Provider and creds
provider "aws" {
  region = "us-east-1"
}


