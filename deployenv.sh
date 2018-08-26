#!/bin/bash
ENV=$1
if [ $ENV = "DEV" ]; then
  for i in `cat ip.txt`
      do 
        echo "deploy war file $i:"
        sshpass -p "1234" scp target/student.war siva@$i:/home/siva/soft/apache-tomcat-8.5.32/webapps
        echo "server starting $i"
        sshpass -p "1234" ssh siva@$i "JAVA_HOME=/home/siva/soft/jdk1.8.0_171" "/home/siva/soft/apache-tomcat-8.5.32/bin/startup.sh"
      done
   echo "deploy success"
fi
