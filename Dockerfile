FROM ubuntu:14.04
RUN qpt-get update -y
RUN apt-get install apache2 -y
RUN rm -rf /var/www/html/index.html
ADD index.html /var/www/html
RUN service apache2 restart
RUN service apache2 status
