pipeline {
  stages {
    stage ('Checkout') {
      steps {
        git 'https://github.com/natachikhinashvili/forjenkins.git'
      }
    }
    stage ('Build') {
      steps {
        sh 'docker login'
        sh 'docker build -t myapp .'
        sh 'docker run -d -p 5002:5002 myapp'
      }
    }
  }
  post {
    success {
      echo "completed!"
    }
  }
}
