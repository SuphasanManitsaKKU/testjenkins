pipeline {
    agent any

    stages {
        stage('Run Robot Tests') {
            steps {
                echo 'Running Robot Framework tests...'
                sh 'robot UAT-Lab7-001.robot'
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
