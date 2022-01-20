variable "region" {
  type        = string
  description = "AWS Region"
  default     = "us-east-2"
}

variable "public_sub_cidrs" {
  default = ["10.27.101.0/24", "10.27.102.0/24"]
}

variable "private_sub_cidrs" {
default = ["10.27.1.0/24", "10.27.2.0/24"]
}


