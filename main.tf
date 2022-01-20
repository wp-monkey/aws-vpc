locals {
  name = "demoland"
}

module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = local.name
  cidr = "10.27.0.0/16"

  azs             = ["${var.region}a", "${var.region}b"]
  private_subnets = var.private_sub_cidrs
  public_subnets  = var.public_sub_cidrs

  enable_nat_gateway = true
  enable_vpn_gateway = true
}
