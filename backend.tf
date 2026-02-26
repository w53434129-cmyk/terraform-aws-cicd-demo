terraform {
  backend "s3" {
    bucket         = "terraform-state-cicd-demo-warda-2026"
    key            = "terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-lock-cicd-demo"
  }
}
