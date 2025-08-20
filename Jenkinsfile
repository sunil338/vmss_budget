pipeline {
    agent any

    environment {
        ARM_CLIENT_ID        = credentials('ARM_CLIENT_ID')
        ARM_CLIENT_SECRET    = credentials('ARM_CLIENT_SECRET')
        ARM_TENANT_ID        = credentials('ARM_TENANT_ID')
        ARM_SUBSCRIPTION_ID  = credentials('ARM_SUBSCRIPTION_ID')
    }

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/sunil338/vmss_budget.git'
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
