variable "sg_name" {
  type        = string
}

variable "sg_description" {
  type        = string
}

variable "vpc_id" {
  type        = string
}

variable "project" {
  type        = string
}

variable "environment" {
 type        = string
}

variable "sgtags" {
  type        = map(string)
  description = "A map of tags to assign to the security group"
  default     = {}
}