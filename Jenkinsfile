pipeline {
  agent any

  environment {
    AWS_ACCESS_KEY_ID     = credentials('AWS_ACCESS_KEY_ID')     // Stored in Jenkins
    AWS_SECRET_ACCESS_KEY = credentials('AWS_SECRET_ACCESS_KEY')     // Stored in Jenkins
  }

  stages {
    stage('Clone Repository') {
      steps {
       git branch: 'main', url: 'https://github.com/Seetharamj/CI-CD-2tier-project.git'
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
