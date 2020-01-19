FROM docker.io/pvecenteno/rhel7.3
LABEL description="This is a custom httpd container image"
MAINTAINER John Doe <jdoe@xyz.com>
RUN yum install -y httpd
EXPOSE 8080
ENV LogLevel "info"
COPY index.html /var/www/html/
COPY httpd.conf /etc/httpd/conf/
ENTRYPOINT ["/usr/sbin/httpd"]
CMD ["-D", "FOREGROUND"]
