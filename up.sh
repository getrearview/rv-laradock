#!/bin/bash

docker-compose -f docker-compose.prod.yml up -d workspace nginx mysql php-fpm redis certbot
