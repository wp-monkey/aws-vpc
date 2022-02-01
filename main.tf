locals {
  cidr_block = "${var.cidr_prefix}.0.0/16"
}

module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = var.name
  cidr = local.cidr_block

  azs             = ["${var.region}a", "${var.region}b"]
  private_subnets = var.private_sub_cidrs
  public_subnets  = var.public_sub_cidrs

  enable_nat_gateway = true
  enable_vpn_gateway = true
}
