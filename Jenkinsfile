pipeline {
    agent {label 'ec2'}

    stages {
        stage('Build') {
            steps {
                // Get some code from a GitHub repository
                git branch: 'main', url:'https://github.com/Ahmed-Ashraf15/BackeHouse.git'

                // run docker file and push image to docker hub
                sh 'ls'

                // To run Maven on a Windows agent, use
                // bat "mvn -Dmaven.test.failure.ignore=true clean package"
            }
        }

        stage('Deploy') {
            steps {
                sh 'echo hello'
            }
        }
    }
}
