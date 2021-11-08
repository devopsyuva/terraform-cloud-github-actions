locals {
  common_tags = {
    Name = "Nginx-server"
    Env  = "Web-Application"
  }
}

variable "aws_region" {
  description = "Region on which resources will be created"
  type        = string
  default     = "us-east-1"
}

variable "az_name" {
  description = "Availability Zone name"
  type        = string
  default     = "us-east-1a"
}

variable "inst_type" {
  description = "Multiple instance types"
  type        = string
  default     = "t2.micro"
}

variable "ami_id" {
  description = "Ubuntu 20.04 LTS latest AMI ID"
  type        = string
  default     = "ami-09e67e426f25ce0d7"
}
