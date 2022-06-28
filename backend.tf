terraform {
  required_version = "~> 1.0.11"
  backend "remote" {
    organization = "wpmonkey"
    workspaces {
      name = "aws-vpc"
    }
  }
}
