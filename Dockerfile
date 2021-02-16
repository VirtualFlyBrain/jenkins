FROM jenkins/jenkins:lts
USER root
RUN apt-get update && apt-get install -y build-essential bzip2 lib32readline7 lib32readline-dev make build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev libncursesw5-dev xz-utils tk-dev libffi-dev liblzma-dev python-openssl git
USER jenkins
