data "aws_availability_zones" "available" {
    state = "available"
}

data "aws_vpc" "default" {
  default = true
}

# output "availability_zones" {
#     value = data.aws_availability_zones.available.names
# }