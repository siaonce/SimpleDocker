FROM nginx

USER root

COPY ./nginx.conf /etc/nginx/nginx.conf
COPY ./server.c /home/
COPY ./start_server.sh /home/start_server.sh


RUN rm -rf /var/lib/apt/lists/*; \
    apt-get update; \
    apt-get clean; \
    apt-get install -y gcc spawn-fcgi libfcgi-dev; \
    rm -rf /var/lib/apt/lists/*

WORKDIR /home/

ENTRYPOINT ["sh", "./start_server.sh"]