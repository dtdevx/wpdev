#!/bin/sh

docker run -it --rm \
	--volumes-from wordpress \
	--network container:wordpress \
  -e WORDPRESS_DB_HOST=mariadb \
  -e WORDPRESS_DB_USER=wp \
  -e WORDPRESS_DB_PASSWORD=secret \
  -e WORDPRESS_DB_NAME=wp \
  -e WORDPRESS_DEBUG=1 \
	wordpress:cli $@
