FROM maven:3.9.12-eclipse-temurin-21-noble

RUN apt update && apt install git openssh-client docker.io docker-compose-v2 -y
COPY id_ed25519 /root/.ssh/id_ed25519
RUN chmod 600 /root/.ssh/id_ed25519
RUN apt clean
