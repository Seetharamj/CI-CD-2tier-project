pipeline {
    agent any

    environment {
        AWS_ACCESS_KEY_ID = credentials('aws-access-key')
        AWS_SECRET_ACCESS_KEY = credentials('aws-secret-key')
        TF_VAR_key_name = 'my-key'
        TF_VAR_s3_bucket_name = 'unique-bucket-name-1234567'
    }

    stages {
        stage('Checkout Code') {
            steps {
                git 'https://github.com/Seetharamj/CI-CD-2tier-project.git' 
            }
        }

        stage('Terraform Init') {
            steps {
                sh 'terraform init'
            }
        }

        stage('Terraform Apply') {
            steps {
                sh 'terraform apply -auto-approve'
            }
        }
    }

    post {
        always {
            archiveArtifacts artifacts: '**/*.tf', fingerprint: true
        }
    }
}
