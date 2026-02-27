pipeline {
    agent any

    stages {

        stage('Validate') {
            steps {
                sh 'docker --version'
                sh 'git --version'
            }
        }

        stage('Build') {
            steps {
                sh 'chmod +x build.sh'
                // Passing the build number as a tag
                sh "./build.sh dev-${env.BUILD_NUMBER}"
            }
        }

        stage('Deploy') {
            steps {
                sh 'chmod +x deploy.sh'
                sh "./deploy.sh dev-${env.BUILD_NUMBER}"
            }
        }
    }   // ✅ This was missing — closes stages block

    post {
        always {
            echo 'Pipeline execution finished.'
        }
        success {
            echo 'Application deployed successfully!'
        }
        failure {
            echo 'Something went wrong. Check logs.'
        }
    }
}
