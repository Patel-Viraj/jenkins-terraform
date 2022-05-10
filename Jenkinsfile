pipeline {
         agent any
         tools {
            terraform 'terraform'
         }
         stages {
                 stage('terraform-version') {
                  steps {
                     sh "terraform -v"
                  }
                 }
                 stage('build') {
                  steps {
                      sh  "echo App is building"
                   }
                 }
             
      }
}
