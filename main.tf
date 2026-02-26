
provider "aws" {
  region = var.aws_region
}

# EC2 instance
resource "aws_instance" "web" {
  ami           = "ami-0c94855ba95c71c99"  # Amazon Linux 2 AMI
  instance_type = var.ec2_instance_type
  tags = {
    Name = "cicd-demo-web"
  }
}

# S3 bucket
resource "aws_s3_bucket" "data" {
  bucket = var.s3_bucket_name
  acl    = "private"
}
