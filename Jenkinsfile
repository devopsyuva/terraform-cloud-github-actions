pipeline {
    agent any
    stages {
        stage('Terraform Initialization') {
            steps {
                sh 'terraform init'
                sh 'pwd'
                sh 'ls -al'
            }
        }
        stage('Terraform Format') {
            steps {
                sh 'terraform fmt -check'
            }
        }
        stage('Terraform Validate') {
            steps {
                sh 'terraform validate'
            }
        }
        stage('Terraform Planning') {
            steps {
                sh 'terraform plan -no-color'
            }
        }
        stage('Terraform Apply') {
            steps {
                sh 'terraform apply -auto-approve'
            }
        }
    }
}
