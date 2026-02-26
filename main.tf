
provider "aws" {
  region = var.aws_region
}

# Create a subnet
resource "aws_subnet" "main" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "10.0.1.0/24"
  availability_zone = "us-east-1a"
  tags = {
    Name = "cicd-demo-subnet"
  }
}

# EC2 instance
resource "aws_instance" "web" {
  ami           = "ami-0c94855ba95c71c99"  # Amazon Linux 2 AMI
  instance_type = var.ec2_instance_type
  subnet_id     = aws_subnet.main.id
  tags = {
    Name = "cicd-demo-web"
  }
}

# S3 bucket
resource "aws_s3_bucket" "data" {
  bucket = var.s3_bucket_name
  acl    = "private"
}
