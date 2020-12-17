FROM centos:latest
MAINTAINER sahil.jet786@gmail.com
RUN yum install -y httpd \
  zip \
 unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page258/five-hotel.zip /var/www/html
WORKDIR /var/www/html
RUN unzip five-hotel.zip
RUN cp -rvf five-hotel/* .
RUN rm -rf five-hotel five-hotel.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
