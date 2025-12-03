module "m1" {
  source = "./modules"
  environment = "dev"
  ami = "ami-0305d0b03812a425e"
  instance_type = "t2.micro"
}

output "env" {
  value = module.m1.env
}

output "ami" {
  value = module.m1.ami
}

output "instance_type" {
  value = module.m1.instance_type
}

output "id" {
  value = module.m1.id
}
