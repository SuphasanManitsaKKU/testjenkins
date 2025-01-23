pipeline {
    agent any

    stages {
        stage('Setup') {
            steps {
                echo 'Creating virtual environment and installing Robot Framework...'
                sh '''
                python -m venv venv
                . venv/bin/activate
                pip install --upgrade pip
                pip install robotframework
                '''
            }
        }

        stage('Run Robot Tests') {
            steps {
                echo 'Running Robot Framework tests...'
                sh '''
                . venv/bin/activate
                robot UAT-Lab7-001.robot
                '''
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
