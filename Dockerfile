FROM alpine:latest

LABEL maintainer="YuXiao(xiao.950901@gmail.com)"

RUN \
  echo 'http://dl-cdn.alpinelinux.org/alpine/edge/testing/' >> /etc/apk/repositories && \
  sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories && \
  apk update && apk upgrade && \
  apk add -u bash gettext php7-apache2 phpldapadmin && \
  rm -rf /var/www/localhost/htdocs && \
  ln -sf /usr/share/webapps/phpldapadmin/htdocs /var/www/localhost/ && \
  rm -rf /tmp/* /var/tmp/* /var/cache/apk/* /var/cache/distfiles/*

EXPOSE 80

STOPSIGNAL SIGTERM

CMD ["httpd", "-D", "FOREGROUND"]
