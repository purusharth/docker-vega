FROM debian:stretch-slim

RUN mkdir -p /usr/share/man/man1 && \
    apt-get update -y && \
    apt-get install -y openjdk-8-jre-headless libwebkitgtk-1.0

RUN apt-get install unzip -y && \
    apt-get autoremove -y

WORKDIR /app

COPY . .

CMD ["vega/Vega"]
