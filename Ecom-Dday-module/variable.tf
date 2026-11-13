variable "security_group_ids" {
  default = ["sg-0344db32df13aadd3"]
}
variable "tags" {
  default = {
    Name        = "Ecom-cart-EC2"
  }
}

variable "instance_type" {
  default = "t3.medium"

  validation {
    condition     = contains(["t3.micro", "t3.small", "t3.medium"], var.instance_type)
    error_message = "Invalid instance type. Allowed values are: t3.micro, t3.small, t3.medium."
  }
}