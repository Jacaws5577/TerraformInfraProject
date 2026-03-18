variable "ami" {
  description = "AMI ID to use for the EC2 instance."
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type."
  type        = string
  default     = "t2.micro"
}

variable "subnet_id" {
  description = "Subnet ID in which to launch the EC2 instance."
  type        = string
}

variable "instance_count" {
  description = "Number of EC2 instances to create."
  type        = number
  default     = 1
}

variable "name" {
  description = "Name tag value to apply to the EC2 instance."
  type        = string
  default     = ""
}

variable "environment" {
  description = "Environment tag value to apply to the EC2 instance(Dev,Prod, QA)."
  type        = string
  default     = ""
}

variable "tags" {
  description = "Additional tags to apply to the EC2 instance."
  type        = map(string)
  default     = {}
}
