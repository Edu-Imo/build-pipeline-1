pipeline {
    agent any

    tools {maven 'mvn3.6.3'}

    stages {

        stage('Clean') {
            steps {
                sh 'mvn clean'
            }
            post{
                always {
                    script {
                        echo 'mvn clean running'
                    }
                }
                success {
                    script {
                        echo 'mvn clean success'
                    }
                }
                failure {
                    script {
                        echo 'mvn clean failed'
                    }
                }
            }
        }

        /*stage('Test') {
            steps {
                sh 'mvn test'
            }
            post{
                always {
                    script {
                        echo 'mvn test running'
                    }
                }
                success {
                    script {
                        echo 'mvn test success'
                    }
                }
                failure {
                    script {
                        echo 'mvn test failed'
                    }
                }
            } 
        }*/

        stage('Compile') {
            steps {
                sh 'mvn compile'
            }
            post{
                always {
                    script {
                        echo 'mvn compile running'
                    }
                }
                success {
                    script {
                        echo 'mvn compile success'
                    }
                }
                failure {
                    script {
                        echo 'mvn compile failed'
                    }
                }
            }            

        }

        stage('Package') {
            steps {
                sh 'mvn package'
            }
            post{
                always {
                    script {
                        echo 'mvn package running'
                    }
                }
                success {
                    script {
                        echo 'mvn package success'
                    }
                }
                failure {
                    script {
                        echo 'mvn package failed'
                    }
                }
            }                       
        }
        /*stage (Build-Docker-Image) {
            steps {

            }
        }*/
    }
}