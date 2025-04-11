pipeline {
  agent any

  environment {
    HTTP_PROXY = 'http://127.0.0.1:9888'
    ORG_GRADLE_JAVA_INSTALLATIONS_AUTO_DOWNLOAD = 'false'
  }

  options {
    skipStagesAfterUnstable()
  }

  tools {
    jdk 'jdk11'
}

  stages {
    stage('Checkout') {
      steps {
        checkout scm
      }
    }
    
    stage('Build Container') {
      steps {
        sh './gradlew clean assemble'
      }
    }

    stage('Unit Tests') {
      steps {
        sh './gradlew test'
      }
      post {
        always {
          junit 'build/test-results/test/*.xml'
        }
      }
    }

    stage('Static Analysis') {
      steps {
        withSonarQubeEnv('My SonarQube') {
          sh './gradlew sonarqube'
        }
        sleep time: 5, unit: 'SECONDS'
        sh './gradlew checkQualityGate'
      }
    }
  }

  post {
    always {
      echo 'Pipeline execution completed.'
    }
  }
}
