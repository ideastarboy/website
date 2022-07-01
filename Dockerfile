FROM ubuntu
RUN apt-get update
RUN DEBIAN FRONTEND="noninteractive" apt-get -yinstall tzdata
RUN apt-get -y install apache2
ADD . /var/www/html
ENTRYPOINT apachectl -D FOREGROUND
