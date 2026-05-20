FROM gitea/act_runner:latest

# Install Java 21 AND Node.js (required by official actions)
USER root
RUN apk update && \
    apk add --no-cache openjdk21-jdk nodejs npm

# Update and install Docker CLI using Alpine's 'apk'
RUN apk update && apk add --no-cache docker-cli