pipeline {
  agent any
  stages {
    stage ('Checkout') {
      steps {
        git branch: 'main', url: 'https://github.com/natachikhinashvili/forjenkins.git'
      }
    }
    stage ('Build') {
      steps {
        sh '/usr/local/bin/docker login'
        sh '/usr/local/bin/docker build -t myapp .'
        sh '/usr/local/bin/docker run -d -p 5002:5002 myapp'
      }
    }
  }
  post {
    success {
      echo "completed!"
    }
  }
}