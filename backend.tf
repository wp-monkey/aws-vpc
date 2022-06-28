terraform {
  required_version = "~> 1.2.3"
  backend "remote" {
    organization = "wpmonkey"
    workspaces {
      name = "aws-vpc"
    }
  }
}
