variable "region" {
  type        = string
  default     = "us-east-2"
  description = "AWS Region"
}

variable "name" {
  type        = string
  default     = "wpmonkey"
  description = "This will be a common named used for labeling most resources"
}

variable "cidr_prefix" {
  default     = 10.28
  description = "I chose 10.28 because it's a private subnet and because .27 is super random."
}