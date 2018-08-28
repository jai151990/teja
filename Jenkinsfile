pipeline {
   agent { label 'node' }
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
                     sh 'cp target/student.war /home/siva/soft/apache-tomcat-8.5.32/webapps'}
                  }
             stage ('serverstart'){
                  steps {
                      sh '''cd /home/siva/soft/apache-tomcat-8.5.32/bin    ./startup.sh''';}
                 }
               }
         }
