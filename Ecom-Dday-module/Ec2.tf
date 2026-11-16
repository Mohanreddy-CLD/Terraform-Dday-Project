module "ec2" {
  source = "../D-DayProject-AWS"
  sg_ids = var.security_group_ids
  instance_type = var.instance_type
  tags = var.tags
}