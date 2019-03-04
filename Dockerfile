FROM centos

RUN yum install httpd -y

WORKDIR /var/www/html

COPY  AdminLTE .

ENV contenido prueba
RUN echo "$contenido" > /var/www/html/prueba.html

CMD apachectl -D FOREGROUND
