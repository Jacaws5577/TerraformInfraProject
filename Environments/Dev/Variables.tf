variable "backend_bucket" {
  description = "The S3 bucket to store the Terraform state"
  type        = string
}

variable "backend_key" {
  description = "The key (path) within the S3 bucket for the Terraform state"
  type        = string
}

variable "backend_region" {
  description = "The AWS region where the S3 bucket is located"
  type        = string
}

variable "backend_dynamodb_table" {
  description = "The DynamoDB table for state locking"
  type        = string
}
