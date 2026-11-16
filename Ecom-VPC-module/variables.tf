variable "project" {
  type        = string
  description = "The name of the project"
}

variable "environment" {
    type        = string
}

variable "cidr_block" {
  description = "The CIDR block for the VPC"
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidr" {
  description = "The CIDR block for the public subnet"
    type        = list(string)
}

variable "private_subnet_cidr" {
  description = "The CIDR block for the private subnet"
    type        = list(string)
}

variable "database_subnet_cidr" {
  description = "The CIDR block for the database subnet"
    type        = list(string)
}

variable "vpc_tags" {
  type        = map(string)
  description = "A map of tags to assign to the VPC"
  default     = {}
}

variable "public_subnet_tags" {
  type        = map(string)
  description = "A map of tags to assign to the public subnets"
  default     = {}
}

variable "private_subnet_tags" {
  type        = map(string)
  description = "A map of tags to assign to the private subnets"
  default     = {}
}

variable "database_subnet_tags" {
  type        = map(string)
  description = "A map of tags to assign to the database subnets"
  default     = {}
}

variable "igw_tags" {
  type        = map(string)
  description = "A map of tags to assign to the internet gateway"
  default     = {}
}

