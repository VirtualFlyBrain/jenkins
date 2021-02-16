FROM jenkins/jenkins:lts
USER root
RUN apt-get update && apt-get install -y build-essential bzip2
USER jenkins
