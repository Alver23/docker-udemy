FROM centos

RUN yum install httpd -y



ADD bootstrap /var/www/html

CMD apachectl -D FOREGROUND
