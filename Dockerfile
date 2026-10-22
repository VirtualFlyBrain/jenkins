FROM jenkins/jenkins:2.580.1-lts-jdk21
USER root
RUN apt-get update && apt-get install -y build-essential bzip2 lib32readline8 lib32readline-dev make build-essential zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm libncurses-dev xz-utils tk-dev liblzma-dev libssl-dev libffi-dev git jq libpq-dev python3-pip python3-venv imagemagick cmtk parallel elastix ffmpeg
USER jenkins
RUN curl https://sh.rustup.rs -sSf | sh -s -- -y
