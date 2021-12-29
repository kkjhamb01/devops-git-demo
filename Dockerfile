FROM php:7.2-apache-alpine
WORKDIR /var/www/html/
COPY . .
ENV name DevOps Dotsquares