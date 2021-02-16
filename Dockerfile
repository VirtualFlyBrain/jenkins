FROM jenkins/jenkins:lts
USER root
RUN apt-get update && apt-get install -y build-essential libssl-dev zlib1g-dev libbz2-dev libsqlite3-dev bzip2 lib32readline7 lib32readline-dev checkinstall
USER jenkins
