terraform {
  backend "s3" {
    bucket         = "terraform-state-cicd-demo"
    key            = "terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-lock-cicd-demo"
  }
}
