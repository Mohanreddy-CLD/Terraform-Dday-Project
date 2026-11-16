# resource "aws_vpc_peering_connection" "default" {
#   count       = var.create_peering_connection ? 1 : 0
#   vpc_id      = aws_vpc.Ecom-VPC.id
#   peer_vpc_id = data.aws_vpc.default.id
#   auto_accept = var.auto_accept

#   accepter {
#     allow_remote_vpc_dns_resolution = var.allow_remote_vpc_dns_resolution
#   }

#   requester {
#     allow_remote_vpc_dns_resolution = var.allow_remote_vpc_dns_resolution
#   }

#   tags = merge(
#     var.vpc_peering_tags,
#     local.common_tags,
#     {
#       Name = "${var.project}-${var.environment}-peering-connection"
#     }
#   )
# }

################################################################################################

# resource "aws_vpc_peering_connection" "default" {
#   count = var.is_peering_required ? 1 : 0

#   peer_vpc_id   = data.aws_vpc.default.id # acceptor VPC which is default here
#   vpc_id        = aws_vpc.main.id # requestor

#   accepter {
#     allow_remote_vpc_dns_resolution = true
#   }

#   requester {
#     allow_remote_vpc_dns_resolution = true
#   }

#   auto_accept = true

#   tags = merge(
#     var.vpc_peering_tags,
#     local.common_tags,
#     {
#         Name = "${var.project}-${var.environment}-default"
#     }
#   )
# }