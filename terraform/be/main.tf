provider "aws" {
  region                   = "us-east-1"
}

resource "aws_instance" "ec2_example" {
    ami = "ami-0305d0b03812a425e"
    instance_type = "t2.micro"
    tags = {
      Name = "EC2 Instance with remote state tag v2x"
    }
}

terraform {
  backend "http" {
    address = "https://ngonzalez.pr2.harness.io/gateway/iacm/api/orgs/default/projects/vit/workspaces/v2/terraform-backend?accountIdentifier=IBhiK0GsTkOJL53cA4gI-A"
    username = "harness"
    lock_address = "https://ngonzalez.pr2.harness.io/gateway/iacm/api/orgs/default/projects/vit/workspaces/v2/terraform-backend/lock?accountIdentifier=IBhiK0GsTkOJL53cA4gI-A"
    lock_method = "POST"
    unlock_address = "https://ngonzalez.pr2.harness.io/gateway/iacm/api/orgs/default/projects/vit/workspaces/v2/terraform-backend/lock?accountIdentifier=IBhiK0GsTkOJL53cA4gI-A"
    unlock_method = "DELETE"
  }
}

