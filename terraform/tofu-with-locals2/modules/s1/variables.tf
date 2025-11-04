variable "region" {}

variable "name_prefix" {}

variable "instance_type" {}

variable "rootloc" {
  type = string
}

variable "root_tags" {
  type = map(string)
}

