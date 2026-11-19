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

variable "vpc_tags" {
  type        = map(string)
  description = "A map of tags to assign to the VPC"
  default     = {}
}

variable "igw_tags" {
  type        = map(string)
  description = "A map of tags to assign to the internet gateway"
  default     = {}
}

variable "public_subnet_cidr" {
  description = "The CIDR block for the public subnet"
    type        = list(string)
}

variable "public_subnet_tags" {
  type        = map(string)
  description = "A map of tags to assign to the public subnets"
  default     = {}
}

variable "private_subnet_cidr" {
  description = "The CIDR block for the private subnet"
    type        = list(string)
}

variable "private_subnet_tags" {
  type        = map(string)
  description = "A map of tags to assign to the private subnets"
  default     = {}
}

variable "database_subnet_cidr" {
  description = "The CIDR block for the database subnet"
    type        = list(string)
}

variable "database_subnet_tags" {
  type        = map(string)
  description = "A map of tags to assign to the database subnets"
  default     = {}
}

variable "eip_tags" {
  type        = map(string)
  description = "A map of tags to assign to the elastic IPs"
  default     = {}
}

variable "nat_gateway_tags" {
  type        = map(string)
  description = "A map of tags to assign to the NAT gateways"
  default     = {}
}

variable "public_route_table_tags" {
  type        = map(string)
  description = "A map of tags to assign to the public route tables"
  default     = {}
}

variable "private_route_table_tags" {
  type        = map(string)
  description = "A map of tags to assign to the private route tables"
  default     = {}
}

variable "database_route_table_tags" {
  type        = map(string)
  description = "A map of tags to assign to the database route tables"
  default     = {}
}

variable "is_peering_required" {
    default = false
}

variable "vpc_peering_tags" {
    type = map(string)
    default = {}
}

# variable "auto_accept" {
#   type        = bool
#   description = "Accept the peering (both VPCs need to be in the same AWS account and region)"
#   default     = true
# }

# variable "vpc_peering_tags" {
#   type        = map(string)
#   description = "A map of tags to assign to the VPC peering connection"
#   default     = {}
# }

# variable "is_peering_required" {
#     default = false
# }

# variable "vpc_peering_tags" {
#     type = map(string)
#     default = {}
# }