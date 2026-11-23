FROM jenkins/jenkins:2.580.2-lts-jdk21
USER root
# CVE-2026-114938 (Java4Shell): no jenkins/jenkins controller image carries a fixed JDK yet (2.580.2 ships Temurin
# 21.0.13+9), so replace the bundled runtime with the patched Temurin 21.0.13.1. Remove these three lines once the
# base image is bumped to an LTS that ships 21.0.13.1 or later (2.580.3 is expected to).
RUN rm -rf /opt/java/openjdk
COPY --from=eclipse-temurin:21.0.13.1_2-jdk /opt/java/openjdk /opt/java/openjdk
ENV JAVA_OPTS="-XX:-UseBASE64Intrinsics"
RUN apt-get update && apt-get install -y build-essential bzip2 lib32readline8 lib32readline-dev make build-essential zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm libncurses-dev xz-utils tk-dev liblzma-dev libssl-dev libffi-dev git jq libpq-dev python3-pip python3-venv imagemagick cmtk parallel elastix ffmpeg
USER jenkins
RUN curl https://sh.rustup.rs -sSf | sh -s -- -y
