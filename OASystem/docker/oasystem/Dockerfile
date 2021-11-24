FROM    ubuntu:18.04
COPY    sources.list /etc/apt/sources.list
RUN        apt update \
        && apt install -y curl \
        && apt install -y python \
        && apt install -y openjdk-11-jdk
COPY    start.sh /
RUN     chmod +x /start.sh
COPY    oasystem.jar /app/
