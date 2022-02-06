FROM ubuntu:latest
MAINTAINER Ed
RUN apt-get update -y && apt-get upgrade -y
RUN apt-get install -y nano
RUN apt-get install -y iproute2
RUN apt-get install -y openssh-server
RUN apt-get install -y openjdk-11-jdk
RUN apt-get install -y curl
RUN curl -fsSL https://pkg.jenkins.io/debian/jenkins.io.key | tee \
  /usr/share/keyrings/jenkins-keyring.asc > /dev/null
RUN echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
  https://pkg.jenkins.io/debian binary/ | tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null
RUN apt-get update
RUN apt-get install -y jenkins
RUN apt-get clean
EXPOSE 80 22 443 8080
CMD ["jenkins", "-D", "FOREGROUND"]
