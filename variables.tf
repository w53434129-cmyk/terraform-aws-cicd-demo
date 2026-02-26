variable "aws_region" {
  description = "AWS Region"
  default     = "us-east-1"
}

variable "ec2_instance_type" {
  description = "EC2 instance type"
  default     = "t3.micro"
}

variable "s3_bucket_name" {
  description = "S3 bucket name"
  default     = "cicd-demo-bucket-2026"
}
