variable "aws_region" {
  default     = "us-west-2"
  description = "The AWS region to deploy the resources."
}

variable "ami_id" {
  description = "The AMI ID to use for the EC2 instance."
  default     = "ami-04dd23e62ed049936" # Ubuntu
}

variable "instance_type" {
  description = "Type of EC2 instance"
  type        = string
  default     = "t2.micro"
  validation {
    condition     = contains(["t2.micro"], var.instance_type)
    error_message = "Instance type must be t2.micro or t2.small."
  }
}

variable "enable_instance" {
  description = "If the instane is enabled"
  default     = true
}

variable "aws_access_key" {}
variable "aws_secret_key" {}