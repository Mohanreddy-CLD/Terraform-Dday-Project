# locals {
#   az_names = data.aws_availability_zones.available.names

#   common_tags = {
#     Project     = "var.project"
#     Environment = "var.environment"
#     terraform   = "true"
#   }

# }

locals {
  az_names = data.aws_availability_zones.available.names

  common_tags = {
    Project     = var.project
    Environment = var.environment
    terraform   = "true"
  }
}