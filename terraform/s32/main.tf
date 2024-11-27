provider "aws" {
  region                   = "us-east-1"
}

resource "aws_instance" "ec2_example" {
    ami = "ami-0305d0b03812a425e"
    instance_type = "t2.micro"
    tags = {
      Name = "EC2 Instance with remote state tag v3"
    }
}


