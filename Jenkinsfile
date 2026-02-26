pipeline {
    agent any

    environment {
        AWS_REGION = 'us-east-1' // safe to hardcode
    }

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', 
                    url: 'https://github.com/w53434129-cmyk/terraform-aws-cicd-demo.git',
                    credentialsId: 'github'  // secret for PAT
            }
        }

        stage('Terraform Init') {
            steps {
                withCredentials([
                    string(credentialsId: 'aws_access_key', variable: 'AWS_ACCESS_KEY_ID'),
                    string(credentialsId: 'aws_secret_key', variable: 'AWS_SECRET_ACCESS_KEY')
                ]) {
                    sh 'terraform init'
                }
            }
        }
    }
}
