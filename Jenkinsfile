pipeline {
  agent any

  environment {
    HTTP_PROXY = 'http://127.0.0.1:9888'
    ORG_GRADLE_JAVA_INSTALLATIONS_AUTO_DOWNLOAD = 'false'
  }

  options {
    skipStagesAfterUnstable()
  }


  stages {
    stage('Checkout') {
      steps {
        checkout scm
      }
    }
    
    stage('Build Container') {
      when {
        anyOf {
          branch 'main'
          changeRequest()
        }
      }
      steps {
        sh 'docker build -t myapp:pr .'
      }
    }

    stage('Unit Tests') {
      when {
        anyOf {
          branch 'main'
          changeRequest()
        }
      }
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
      when {
        anyOf {
          branch 'main'
          changeRequest()
        }
      }
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
