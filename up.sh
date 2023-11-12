#!/bin/bash

docker-compose -f "docker-compose.$1.yml" up -d workspace nginx mysql php-fpm redis certbot
