FROM centos:latest
RUN yum install httpd zip unzip -y
MAINTAINER abubakarshaikh0428@gmail.com
ADD https://www.tooplate.com/zip-templates/2130_waso_strategy.zip /var/www/html/
WORKDIR /var/www/html/
RUN unzip 2130_waso_strategy.zip
RUN cp -rvf 2130_waso_strategy/* .
RUN rm -rf 2130_waso_strategy 2130_waso_strategy.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80 22
