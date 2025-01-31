pipeline {
    agent {
        docker {
            image 'python:3.12'
            args '--user=root'
        }
    }

    stages {
        stage('Setup') {
            steps {
                echo 'Installing Robot Framework...'
                sh '''
                pip install --upgrade pip
                pip install robotframework
                '''
            }
        }

        stage('Run Robot Tests') {
            steps {
                echo 'Running Robot Framework tests...'
                sh 'robot UAT-Lab7-001.robot'
            }
        }

        stage('Archive Results') {
            steps {
                echo 'Archiving test results...'
                archiveArtifacts artifacts: '**/*.xml', allowEmptyArchive: true
            }
        }
    }

    post {
        always {
            echo 'Pipeline completed.'
        }
        success {
            echo 'Pipeline succeeded!'
        }
        failure {
            echo 'Pipeline failed!'
        }
    }
}
