
terraform {
  required_providers {
    awscc = {
      source  = "registry.opentofu.org/hashicorp/awscc"
      version = "~> 0.1"
    }
    aws = {
      source  = "registry.opentofu.org/hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

# #Provider and creds
provider "aws" {
  region = "us-east-1"
#  alias  = "awsuse1"
}

provider "aws" {
  region = "us-east-2"
#  alias  = "awsuse2"
}

provider "awscc" {
  region = "us-east-1"
#  alias  = "awsccuse1"
}

