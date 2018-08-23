FROM tomcat
RUN useradd -m -d /home/siva -s /bin/bash siva
RUN echo "siva:siva" chpasswd
RUN usermod -aG sudo siva
COPY target/student.war /usr/local/tomcat/webapp
ENTRYPOINT service /usr/local/tomcat/bin/./startup.sh
