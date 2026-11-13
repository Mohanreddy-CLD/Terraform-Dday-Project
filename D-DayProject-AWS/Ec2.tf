resource "aws_instance" "Ecom" {
  ami           = var.ami_id # Amazon Linux 2 AMI (HVM), SSD Volume Type
  instance_type = var.instance_type
  #vpc_security_group_ids = [ aws_security_group.allow_all.id ]
  vpc_security_group_ids = var.sg_ids

  tags = var.tags

}