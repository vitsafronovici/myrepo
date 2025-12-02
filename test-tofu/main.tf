module "m1" {
  source = "./modules"
  environment = "dev"
  ami = "ami-0305d0b03812a425e"
  instance_type = "t2.micro"
}
