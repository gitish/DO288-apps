#!/bin/sh

source /usr/local/etc/ocp4.config

oc new-app --template shl-common/php-mysql-ephemeral \
  -p NAME=quotesapi \
  -p APPLICATION_DOMAIN=quote-shl.${RHT_OCP4_WILDCARD_DOMAIN} \
  -p SOURCE_REPOSITORY_URL=https://github.com/gitish/DO288-apps \
  -p CONTEXT_DIR=quotes \
  -p DATABASE_SERVICE_NAME=quotesdb \
  -p DATABASE_USER=user1 \
  -p DATABASE_PASSWORD=mypa55 \
  --name quotes

