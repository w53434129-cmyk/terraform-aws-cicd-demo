pipeline {
    agent any

    environment {
        AWS_REGION = 'us-east-1'
        AWS_ACCESS_KEY_ID = credentials('aws-terraform')
        AWS_SECRET_ACCESS_KEY = credentials('aws-terraform')
    }

    stages {
        stage('Checkout') {
            steps { git branch: 'main', url: 'https://github.com/<yourusername>/terraform-aws-cicd-demo.git' }
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
