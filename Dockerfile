FROM alpine
RUN apk update
RUN mkdir -p /run/apache2
RUN apk add apache2
COPY . /var/www/localhost/htdocs
env name Devops Dotsquares
ENTRYPOINT exec /ur/sbin/httpd -D FOREGROUND