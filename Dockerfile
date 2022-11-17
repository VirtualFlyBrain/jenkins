FROM jenkins/jenkins:2.346.3-2-lts-jdk8
USER root
RUN apt-get update && apt-get install -y build-essential bzip2 lib32readline8 lib32readline-dev make build-essential zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev libncursesw5-dev xz-utils tk-dev liblzma-dev libssl-dev libffi-dev git jq libpq-dev python3-pip python3-venv
USER jenkins
RUN curl https://sh.rustup.rs -sSf | sh -s -- -y
