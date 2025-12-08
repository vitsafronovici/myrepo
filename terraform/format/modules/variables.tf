variable "environment" {
  description = "Environment name"
  type        = string
  default     = "dev"
}

variable "ami" {
  description = "Fake AMI for testing"
  type        = string
  default     = "ami-0305d0b03812a425e"
}

variable "instance_type" {
  description = "EC2 type"
  type        = string
  default     = "t2.micro"
}
