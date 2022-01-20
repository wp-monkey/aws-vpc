terraform {
  required_version = "~> 1.0.11"
  backend "remote" {
    organization = "demo-land"
    workspaces {
      name = "aws-vpc"
    }
  }
}
