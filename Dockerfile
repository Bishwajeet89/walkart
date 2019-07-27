FROM ubuntu:16.04
MAINTAINER Bishwajeet("bishwajeet.cse@gmail.com")
RUN apt-get update
RUN apt-get install -y openjdk-8-jdk
ADD apache-tomcat-8.5.41.tar.gz /root
ENV JAVA_HOME /usr 
COPY target/walkart.war /root/apache-tomcat-8.5.41/webapps
ENTRYPOINT /root/apache-tomcat-8.5.41/bin/startup.sh && bash
WORKDIR /root
EXPOSE 8080
