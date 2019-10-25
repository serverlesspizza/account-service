pipeline {
   agent {
      label "default"
   }
   stages {
      stage('Checkout') {
         steps {
            script {
               git url: 'https://github.com/serverlesspizza/account-service'
            }
         }
      }
      stage('Build') {
         agent {
            label "maven"
         }
         steps {
            sh 'mvn clean compile'
         }
      }
      stage('Test') {
         agent {
            label "maven"
         }
         steps {
            sh 'mvn test'
         }
      }
      stage('Package') {
         agent {
            label "maven"
         }
         steps {
            sh 'mvn package'
         }
      }
   }
}
