FROM centos:7

RUN yum update -y
RUN yum install -y java-11-openjdk; yum install -y wget && mkdir tomcat

#RUN mkdir tomcat9
WORKDIR tomcat9
RUN wget https://archive.apache.org/dist/tomcat/tomcat-9/v9.0.0.M10/bin/apache-tomcat-9.0.0.M10.tar.gz && tar -zxvf apache-tomcat-9.0.0.M10.tar.gz && rm -rf apache-tomcat-9.0.0.M10.tar.gz && wget http://updates.jenkins-ci.org/download/war/2.7.3/jenkins.war && mv jenkins.war apache-tomcat-9.0.0.M10/webapps
CMD ["apache-tomcat-9.0.0.M10/bin/catalina.sh", "run"]

