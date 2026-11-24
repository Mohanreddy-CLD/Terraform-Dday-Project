resource "aws_security_group" "main" {
  name        = var.sg_name
  description = var.sg_description
  vpc_id      = var.vpc_id
  
  tags = merge(
    var.sgtags,
    local.common_tags,
    {
      Project     = var.project
      Environment = var.environment
    },
    {
      Name        = "${var.project}-${var.environment}-${var.sg_name}"
      Project     = var.project
      Environment = var.environment
    }
  )
}