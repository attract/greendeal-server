FROM attractgrouphub/alpine-php7-nginx-composer

MAINTAINER igorskubiy@attractgroup.com

RUN apk add supervisor nodejs bash git make g++ openssl && \
npm install npm@latest -g && \
npm install --global gulp 