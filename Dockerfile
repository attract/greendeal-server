FROM attractgrouphub/alpine-php7-nginx-composer

MAINTAINER igorskubiy@attractgroup.com

RUN apk upgrade --update && apk add supervisor nodejs bash git make g++ openssl php7-mysqli php7-pdo_mysql \
php7-pdo_sqlite php5-mcrypt php7-ctype php5-xml php7-xmlreader php7-pcntl php7-exif php7-gd php7-zip && \
rm -rf /var/cache/apk/* && \
npm install npm@latest -g && \
npm install --global gulp && \
composer global require "hirak/prestissimo:^0.3"