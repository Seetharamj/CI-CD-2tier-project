pipeline {
    agent any

    environment {
        AWS_ACCESS_KEY_ID     = credentials('AWS-ACCESS-KEY')
        AWS_SECRET_ACCESS_KEY = credentials('AWS-SECRET-KEY')
        TF_VAR_key_name       = 'my-key'
        TF_VAR_s3_bucket_name = 'unique-bucket-name-1234567'
    }

    stages {
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
            script {
                archiveArtifacts artifacts: '**/*.tf', fingerprint: true
            }
        }
    }
}
