pipeline {
    agent any

    tools {maven 'mvn3.6.3'}
    environment {version = readMavenPom().getVersion()}

    stages {

        stage('Clean') {
            steps {
                sh 'mvn clean'
                sh "echo ${version}"
                /*script {
                    echo 'mvn clean running'
                    //def version = readMavenPom().getVersion()
                    //echo $version
                    pom = readMavenPom file: 'pom.xml'
                    echo pom.version
                }*/
            }
            post{
                always {
                    echo 'Running mvn clean'
                    //echo pom.version

                }
                success {
                    echo 'mvn clean success'
                    /*script {
                        
                    }*/
                }
                failure {

                    echo 'mvn clean failed'
                    /*script {
                        
                    }*/
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
                    echo 'mvn compile running'
                    /*script {
                        
                    }*/
                }
                success {
                    echo 'mvn compile success'
                    /*script {
                        
                    }*/
                }
                failure {
                    echo 'mvn compile failed'
                    /*script {
                        
                    }*/
                }
            }            

        }

        stage('Package') {
            steps {
                sh 'mvn package'
            }
            /*post{
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
            }*/                       
        }
        stage ('Build-Docker-Image') {
            steps {
                sh 'docker build -t addressbook:latest .'

            }
        }
        /*stage ('Tag Docker Image') {
            steps {
                // install the Pipeline Utility Steps plugin to read the pom file
                //def pom = readMavenPom file: 'pom.xml'
                pom = readMavenPom file: 'pom.xml'
                //get git commit id
                sh 'docker tag qui3tst0rm/pom.name:latest qui3tst0rm/pom.name:pom.version'
                //sh 'docker tag qui3tst0rm/pom.name:latest qui3tst0rm/pom.name:commitid'
            }
        

        }*/
        /*stage('Push Docker Image') {
            steps {
                withCredentials([usernamePassword(credentialsId: 'DOCKER_CREDS', passwordVariable: 'DOCKER_HUB_PWD', usernameVariable: 'DOCKER_HUB_USER')]) {
                    
                    sh 'docker login -u $DOCKER_HUB_USER -p $DOCKER_HUB_PWD'
                }
                    sh 'docker push vasistaops/addressbook:pom.version'
                }
        }*/
    }
}


/*{
    "scripts": {
        "postpublish" : "PACKAGE_VERSION=$(cat package.json | grep version | head -1 | awk -F: '{ print $2 }' | sed 's/[\",]//g' | tr -d '[[:space:]]') && git tag $PACKAGE_VERSION && git push --tags"
    }
}*/

//https://github.com/rajavasista/pipeline_project/blob/main/Jenkinsfile
//https://github.com/rajavasista/pipeline_project/blob/main/Dockerfile