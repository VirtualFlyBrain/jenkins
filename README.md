# Jenkins

Based on jenkins/jenkins:lts-jdk21 build (pinned in the Dockerfile; bump it when a new LTS is released)

docker run -p 8080:8080 -p 50000:50000 -v jenkins_home:/var/jenkins_home virtualflybrain/jenkins
