FROM attractgrouphub/alpine-php7-nginx-composer

MAINTAINER igorskubiy@attractgroup.com

RUN apk upgrade --update && apk add supervisor nodejs bash git make g++ openssl && \
rm -rf /var/cache/apk/* && \
npm install npm@latest -g && \
npm install --global gulp && \
composer global require "hirak/prestissimo:^0.3"