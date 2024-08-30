variable "access_key" {
  default = "AKIAZV4A45DTKQBV43XN"
}
variable "secret_key" {
  default = "xxx"
}
variable "region" {
  default = "us-east-1"
}

provider "aws" {
  access_key = "${var.access_key}"
  secret_key = "${var.secret_key}"
  region     = "us-east-1"
  asgName = "vitasg__1"
}

output "region" {
  value = "${var.region}"
}

output "asgName" {
  value = "vitwithlaunch4"
}

output "vpcIds" {
  value = ["vpc-0ed86ccd8b4a7795e", "vpc-0c5b9086ccea05263"]
}

output "myVar" {
  value = "myValue"
}

output "loadBalancer" {
  value = "vit3-elb"
}

output "prodListener" {
  value = "arn:aws:elasticloadbalancing:us-east-1:806630305776:listener/app/vit3-elb/59734084df74f16a/e80c02a9f90639e6"
}

output "v1" {
  value = "v1"
}

