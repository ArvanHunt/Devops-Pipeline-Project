pipeline {
    agent any

    environment {
        IMAGE = "devops-app"
    }

    stages {

        stage('Checkout') {
            steps {
                git 'https://github.com/your-username/devops-advanced-project.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t $IMAGE ./app'
            }
        }

        stage('Run Tests') {
            steps {
                sh 'echo "Running tests..."'
            }
        }

        stage('Deploy to Kubernetes') {
            steps {
                sh 'kubectl apply -f k8s/'
            }
        }

        stage('Terraform Apply') {
            steps {
                sh 'cd terraform && terraform init && terraform apply -auto-approve'
            }
        }
    }

    post {
        success {
            echo 'Deployment Successful 🚀'
        }
        failure {
            echo 'Pipeline Failed ❌'
        }
    }
}