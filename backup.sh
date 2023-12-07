#!/bin/bash

docker-compose -f docker-compose.prod.yml exec -i --user=laradock workspace php artisan backup:run
aws s3 mv ./../storage/app/hope-pages/* s3://rv-production-backups/web/hope-pages.zip