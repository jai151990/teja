pipeline {
   agent { label 'pipe' }
        stages {
           stage ('checkout'){
                 steps {
                       checkout scm }
                  }
             stage ('build'){
                  steps {
                       sh 'mvn install'}
                  }
             stage ('definescript'){
                  steps {
                       sh './file.sh'}
                  }
               }
         }
