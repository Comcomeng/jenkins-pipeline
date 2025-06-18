pipeline {
    agent any

    environment {
        PATH = "C:\Windows\System32;C:\Program Files\Docker\Docker\resources\bin;${env.PATH}"
    }

    stages {
        stage('Install Dependencies') {
            steps {
                bat 'echo Installing dependencies...'
            }
        }

        stage('Run Tests') {
            steps {
                bat 'echo Running tests...'
            }
        }

        stage('Docker Build and Run') {
            steps {
                bat 'echo Docker build and run...'
                bat 'docker build -t myapp .'
                bat 'docker run -d -p 8081:80 myapp'
            }
        }
    }
}
