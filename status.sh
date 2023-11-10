#!/bin/bash

docker ps -a --filter name="laradock|mysql" --format "table {{.ID}}\t{{.Names}}\t{{.Status}}" | (read -r; printf "%s\n" "$REPLY"; sort -k 2 )
