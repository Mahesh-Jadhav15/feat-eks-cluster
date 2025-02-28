data "aws_availability_zones" "available" {}
data "aws_partition" "current" {}
data "aws_caller_identity" "current" {}
data "aws_region" "current" {}


data "aws_vpc" "selected" {
  id = var.vpc_id
}
data "aws_subnet" "private" {
  for_each = toset(var.private_subnets)
  id       = each.value
}