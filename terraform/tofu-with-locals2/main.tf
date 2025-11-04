module "s1" {
  source = "./modules/s1"
  region = var.region
  name_prefix        = var.name_prefix
  instance_type = var.instance_type
  rootloc = local.rootloc
  root_tags = local.root_tags
}

module "s2" {
  source = "./modules/s2"
}