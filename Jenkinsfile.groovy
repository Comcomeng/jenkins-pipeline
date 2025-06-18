pipeline {
    agent any
    stages {
        stage('Clone') {
            steps {
                git 'https://github.com/Comcomeng/jenkins-pipeline.git'
            }
        }
        stage('Install Dependencies') {
            steps {
                sh 'curl -sS https://getcomposer.org/installer | php'
                sh 'php composer.phar install'
            }
        }
        stage('Run Tests') {
            steps {
                sh './vendor/bin/phpunit --bootstrap vendor/autoload.php test/'
            }
        }
        stage('Docker Build and Run') {
            steps {
                sh 'docker build -t php-jenkins-app .'
                sh 'docker run -d -p 8080:80 php-jenkins-app'
            }
        }
    }
}
