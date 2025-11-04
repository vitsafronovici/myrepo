locals {
  vitloc  = "vit s1 tag1"

  tags = var.root_tags

  region_short = replace(replace(var.region, "-", ""), "east", "e")

  vpc_search_pattern = "tmcc-ep-en-mg-${local.tags.tag1}-${local.tags.tag2}-${local.region_short}"

  azs = slice(data.aws_availability_zones.available.names, 0, min(2, length(data.aws_availability_zones.available.names)))

}