FROM nginx

RUN useradd alver

COPY AdminLTE /usr/share/nginx/html

ENV archivo docker

WORKDIR /usr/share/nginx/html

RUN echo "$archivo" > /usr/share/nginx/html/env.html

EXPOSE 90

LABEL version=1

USER alver

RUN echo "Yo soy $(whoami)" > /tmp/user.html

USER root

RUN mv /tmp/user.html /usr/share/nginx/html/docker.html

VOLUME /var/logs/nginx

CMD nginx -g 'daemon off;'
