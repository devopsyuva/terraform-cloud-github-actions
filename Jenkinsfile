pipeline {
   agent any 
   stages {
      stage('Terraform Initialization') {
           steps {
               sh 'terraform init'
           }
      }
      stage('Terraform Formating') {
           steps {
               sh 'terraform fmt -check'
           }
      }
      stage('Terraform Validation') {
           steps {
               sh 'terraform validate -no-color'
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
