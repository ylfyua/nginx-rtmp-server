FROM ubuntu:latest

RUN apt update && \
    apt install -y nginx libnginx-mod-rtmp && \
    apt clean

COPY config/nginx.conf /etc/nginx/nginx.conf

EXPOSE 80 1935

CMD ["nginx", "-g", "daemon off;"]

