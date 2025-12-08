terraform {
  required_version = ">= 1.5.7"
}

# Mock AWS instance (tests use plan-only mode)
resource "aws_instance" "example" {
  ami           = var.ami
  instance_type = var.instance_type

  tags = {
    Environment = var.environment
  }
}
