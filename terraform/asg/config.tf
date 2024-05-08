variable "access_key" {}
variable "secret_key" {}
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
	value = "choice-demo-base"
}

output "myVar" {
  value = "myValue2"
}

output "loadBalancer" {
  value = "vit3-elb2"
}

output "prodListener" {
  value = "arn:aws:elasticloadbalancing:us-east-1:806630305776:listener/app/vit3-elb/59734084df74f16a/e80c02a9f90639e6"
}
