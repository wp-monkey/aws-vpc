module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = var.name
  cidr = "${var.cidr_prefix}.0.0/16"

  azs             = ["${var.region}a", "${var.region}b"]
  private_subnets = ["${var.cidr_prefix}.101.0/24", "${var.cidr_prefix}.102.0/24"]
  public_subnets  = ["${var.cidr_prefix}.1.0/24", "${var.cidr_prefix}.2.0/24"]

  enable_nat_gateway = true
  enable_vpn_gateway = true
}
