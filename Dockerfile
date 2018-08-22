FROM tomcat
MAINTAINER "Shankar"
RUN apt-get update
RUN apt-get install -y procps
RUN apt-get install -y vim
RUN apt-get install -y openssh-server
RUN apt-get install -y sshpass
ENTRYPOINT service ssh start
RUN apt-get install -y sudo
RUN useradd -m -d /home/siva -s /bin/bash siva
RUN echo "siva:siva" chpasswd
RUN usermod -aG sudo siva
COPY target/student.war /usr/local/tomcat/webapp
ENTRYPOINT service /usr/local/tomcat/bin/./startup.sh
