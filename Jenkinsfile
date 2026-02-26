pipeline {
    agent any

    environment {
        AWS_REGION = 'us-east-1'
        AWS_ACCESS_KEY_ID = credentials('terrafomr')
        AWS_SECRET_ACCESS_KEY = credentials('terrafomr')
    }

    stages {
        stage('Checkout') {
            steps { git branch: 'main', url: 'https://w53434129-cmyk/terraform-aws-cicd-demo.git' }
        }

        stage('Terraform Init') {
            steps { sh 'terraform init' }
        }

        stage('Terraform Plan') {
            steps { sh 'terraform plan -out=tfplan' }
        }

        stage('Terraform Apply') {
            steps { sh 'terraform apply -auto-approve tfplan' }
        }
    }
}
