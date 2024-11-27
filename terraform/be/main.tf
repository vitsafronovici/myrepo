provider "aws" {
  region                   = "us-east-1"
}

resource "aws_instance" "ec2_example" {
    ami = "ami-0305d0b03812a425e"
    instance_type = "t2.micro"
    tags = {
      Name = "EC2 Instance with remote state tag8"
    }
}

terraform {
  backend "http" {
    address = "https://vitsafrov.pr2.harness.io/gateway/iacm/api/orgs/default/projects/vit/workspaces/w7/terraform-backend?accountIdentifier=cK8RtyzWTPS2DF98iz_nhA"
    username = "harness"
    lock_address = "https://vitsafrov.pr2.harness.io/gateway/iacm/api/orgs/default/projects/vit/workspaces/w7/terraform-backend/lock?accountIdentifier=cK8RtyzWTPS2DF98iz_nhA"
    lock_method = "POST"
    unlock_address = "https://vitsafrov.pr2.harness.io/gateway/iacm/api/orgs/default/projects/vit/workspaces/w7/terraform-backend/lock?accountIdentifier=cK8RtyzWTPS2DF98iz_nhA"
    unlock_method = "DELETE"
  }
}

