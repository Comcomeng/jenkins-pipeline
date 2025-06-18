pipeline {
    agent any
     environment {
        PATH = "C:\\Windows\\System32;${env.PATH}"
        PATH = "C:\Program Files\Docker\Docker;${env.PATH}"
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
                bat 'docker run --rm php-local-app > output.txt'
                bat 'type output.txt'
                // bat 'docker build -t myapp .'
                // bat 'docker run -d -p 8080:80 myapp'
            }
        }
    }
}
