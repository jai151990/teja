pipeline {
   agent any
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
                   sh 'sshpass -p "1234" scp target/student.war siva@172.17.0.2:/home/siva/soft/apache-tomcat-8.5.32/webapps' }
                  }
             stage ('serverstart'){
                  steps {
                   sh 'sshpass -p "1234" ssh siva@172.17.0.2 "JAVA_HOME=/home/siva/soft/jdk1.8.0_171" "/home/siva/soft/apache-tomcat-8.5.32/bin/startup.sh"'}
                         }
                }
         }
 }
