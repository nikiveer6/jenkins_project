FROM ubuntu:16.04
FROM tomcat:8.0
MAINTAINER Treemind Softwares ltd
RUN apt-get update
RUN apt-get install -y vim
RUN apt-get install -y git
RUN apt-get install -y openssh-server
RUN apt-get install -y sudo
RUN apt-get install -y net-tools
RUN cd /usr/local/tomcat/webapps/ && wget http://192.168.31.200:8081/nexus/service/local/repositories/releases/content/com/username/treemind/1.0/treemind-1.0.war
#COPY ${WORKSPACE}/target/treemind.war /usr/local/tomcat/webapps
ENTRYPOINT /usr/local/tomcat/bin/startup.sh && bash
## https://github.com/anilchejarla/jenkins_project.git
# ENTRYPOINT service ssh start && bash
