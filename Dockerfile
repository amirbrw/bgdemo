FROM registry.access.redhat.com/rhscl/php-70-rhel7:latest
LABEL description="This is a custom httpd container image"
MAINTAINER John Doe <jdoe@xyz.com>
RUN yum install -y httpd
EXPOSE 80
COPY . /var/www/html/
ENTRYPOINT ["/usr/sbin/httpd"]
CMD ["-D", "FOREGROUND"]
