variable "access_key2" {
  default = "AKIAZV4A45DTKQBV43XN"
}
variable "secret_key2" {
  default = "xxx"
}
variable "region" {
  default = "us-east-1"
}
variable "myvar" {
  default = "us-east-1"
}


provider "aws" {
  region                   = "us-east-1"
}

resource "aws_instance" "ec2_example" {
    ami = "ami-0305d0b03812a425e"
    instance_type = "t3.micro"
    tags = {
      Name = "EC2 Instance with remote state tag v1"
      Description = "${var.myvar}"
    }
}

terraform {
    backend "s3" {
        bucket = "vit-s3-bucket"
        key    = "vit/terraform/remote/s3/terraform.tfstate"
        region     = "us-east-1"
        dynamodb_table = "vit-lock"
    }
}
