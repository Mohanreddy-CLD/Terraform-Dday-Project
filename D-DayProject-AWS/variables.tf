variable "ami_id" {
  type        = string
  default     = "ami-04b0b8ee9ce90920a"
  description = "AMI ID of the EC2 instance"
}

variable "instance_type" {
    default = "t3.medium"
    type = string
    description = "SKU size of the EC2"
}

variable "sg_ids"{
    type = list
}

variable "tags" {
    type = map
}