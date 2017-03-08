#++++++++++++++++++++++++++++++++++++++
# Ubuntu 14.04 PHP-Nginx Docker container
#++++++++++++++++++++++++++++++++++++++

FROM webdevops/php-nginx
MAINTAINER info@webdevops.io

RUN mkdir /admin && chmod -Rf 777 /admin
ADD ./public/index.php /app/
ADD ./admin/index.php /admin
ADD ./vhost.conf /tmp
ADD ./htpasswd /opt/docker/etc/nginx/

RUN rm -f /opt/docker/etc/nginx/vhost.conf && mv /tmp/vhost.conf /opt/docker/etc/nginx/vhost.conf && \
    mv /opt/docker/etc/nginx/htpasswd /opt/docker/etc/nginx/.htpasswd
