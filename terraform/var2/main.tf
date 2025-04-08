variable "threads_per_core" {
  type = number
  default = 2
}

variable "source_dest_check" {
  type = bool
  default = false
}

variable "threads_per_core_str" {
  type = string
  default = "3"
}

variable "source_dest_check_str" {
  type = string
  default = "true"
}

variable "example_map" {
  type = map(object({
    instance_type = string
    threads_per_core = number
    source_dest_check = bool
  }))
  default = {
    key1 = {
      instance_type = "t3.micro"
      threads_per_core = 3
      source_dest_check = false
    }
    key2 = {
      instance_type = "t2.micro"
      threads_per_core = 1
      source_dest_check = false
    }
  }
}


provider "aws" {
  region                   = "us-east-1"
}

resource "aws_instance" "ec2_vit_ex" {
    ami = "ami-0305d0b03812a425e"
    instance_type = "${var.example_map["key2"].instance_type}"

    source_dest_check = "${var.example_map["key2"].source_dest_check}"

    cpu_options {
      threads_per_core = "${var.example_map["key2"].threads_per_core}"
    }    

    tags = {
      Name = "EC2 Instance with remote state tag3 ${var.example_map["key2"].instance_type}; ${var.example_map["key2"].source_dest_check}; ${var.example_map["key2"].threads_per_core};"
    }
}



