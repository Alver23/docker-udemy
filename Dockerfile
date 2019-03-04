FROM centos

LABEL version="1.0"
LABEL description="This is an apache image"


RUN yum install httpd -y

COPY  AdminLTE /var/www/html

ENV contenido prueba

RUN echo "$contenido" > /var/www/html/prueba.html

RUN echo "$(whoami)" > /var/www/html/user1.html

RUN useradd alver

USER alver

RUN echo "$(whoami)" > /tmp/user2.html

USER root

VOLUME /var/www/html

RUN mv /tmp/user2.html /var/www/html/user2.html

CMD apachectl -D FOREGROUND
