FROM eclipse-temurin:25

RUN apt update && apt install -y wget unzip && rm -rf /var/lib/apt/lists/*

WORKDIR /server