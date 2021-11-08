pipeline {
    agent any
    stages {
        stage('Terraform Initialization') {
            steps {
                sh 'terraform init'
            }
        }
        steps('Terraform Format') {
            steps {
                sh 'terraform fmt -check'
            }
        }
        steps('Terraform Validate') {
            steps {
                sh 'terraform validate'
            }
        }
        steps('Terraform Planning') {
            steps {
                sh 'terraform plan -no-color'
            }
        }
        steps('Terraform Apply') {
            steps {
                sh 'terraform apply -auto-approve'
            }
        }
    }
}
