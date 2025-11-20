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
  default = "default1"
}
variable "myvar2" {
  default = "default2"
}
variable "myvar3" {
  default = "default3"
}


provider "aws" {
  region                   = "us-east-1"
}

resource "aws_instance" "ec2_example" {
    ami = "ami-0305d0b03812a425e"
    instance_type = "t3.micro"
    tags = {
      Name = "EC2 Instance with remote state tag v2"
      Description = "${var.myvar}"
      Region = var.region
      myvar2 = var.myvar2
      myvar3 = var.myvar3
    }
}
