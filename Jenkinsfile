pipeline {
  agent any

  environment {
    AWS_ACCESS_KEY_ID     = credentials('AWS_ACCESS_KEY_ID')     // Stored in Jenkins
    AWS_SECRET_ACCESS_KEY = credentials('AWS_SECRET_ACCESS_KEY')     // Stored in Jenkins
  }

  stages {
    stage('Clone Repository') {
      steps {
        git 'https://github.com/your-username/ec2-s3-project.git'
      }
    }

    stage('Terraform Init') {
      steps {
        sh 'terraform init'
      }
    }

    stage('Terraform Plan') {
      steps {
        sh 'terraform plan'
      }
    }

    stage('Terraform Apply') {
      steps {
        sh 'terraform apply -auto-approve'
      }
    }
  }
}
