# data "aws_availability_zones" "available" {
#     state = "available"
# }

# data "aws_vpc" "default" {
#     default = true  
# }

# data "aws_route_table" "main" {
#   vpc_id = data.aws_vpc.default.id
#   filter {
#     name   = "association.main"
#     values = ["true"]
#   }
# }

# output "availability_zones" {
#     value = data.aws_availability_zones.available.names
# }

data "aws_availability_zones" "available" {
  state = "available"
}

# locals {
#   az_names = data.aws_availability_zones.available.names

#   common_tags = {
#     Project     = var.project
#     Environment = var.environment
#     terraform   = "true"
#   }
# }