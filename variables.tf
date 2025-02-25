variable "aws_region" {
  description = "The AWS region to use"
  default     = "us-east-1"
}
variable "cp" {
  description = "Customer Prefix to apply to all resources"
  default     = "test"
}
variable "env" {
  description = "The Tag Environment to differentiate prod/test/dev"
  default     = "test"
}

