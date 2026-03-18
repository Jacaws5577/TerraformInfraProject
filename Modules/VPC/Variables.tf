variable "cidr_block" {
  description = "CIDR block for the VPC."
  type        = string
  default     = "10.0.0.0/16"
}

variable "instance_tenancy" {
  description = "Instance tenancy option for instances launched in the VPC."
  type        = string
  default     = "default"
}

variable "environment" {
  description = "Environment name for VPC tagging."
  type        = string
  default     = ""
}

variable "subnet_cidr_block" {
  description = "CIDR block for the subnet."
  type        = string
  default     = "10.0.1.0/24"
}
variable "availability_zone" {
  description = "Availability zone for the subnet."
  type        = string
}
