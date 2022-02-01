variable "region" {
  type        = string
  default     = "us-east-2"
  description = "AWS Region"
}

variable "name" {
  type        = string
  default     = "demoland"
  description = "This will be a common named used for labeling most resources"
}

variable "cidr_prefix" {
  default     = "10.27"
  description = "I chose 10.27 because it's a private subnet and because .27 is super random."
}

variable "public_sub_cidrs" {
  default = ["${var.cidr_prefix}.101.0/24", "${var.cidr_prefix}.102.0/24"]
}

variable "private_sub_cidrs" {
  default = ["${var.cidr_prefix}.1.0/24", "${var.cidr_prefix}.2.0/24"]
}

