resource "aws_instance" "ec2_example" {
    ami = "ami-0305d0b03812a425e"
    instance_type = var.instance_type

    tags = merge(
      local.tags,
      { 
        Name = local.vitloc,
        Name_prefix = var.name_prefix,
        rootloc = var.rootloc
        region_short = local.region_short
        vpc_search_pattern = local.vpc_search_pattern
        azs_len = length(local.azs)
      }
    )

}

