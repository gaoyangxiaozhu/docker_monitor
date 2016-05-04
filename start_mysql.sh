#!/bin/bash
if [ ! $1 ]; then
		echo "usage: $0 name"
		exit
	fi
NAME=$1
docker rm -f $NAME 2>/dev/null
docker run  --name $NAME  --restart=always -p 3333:3306 -v `pwd`/mysql:/var/lib/mysql -e MYSQL_ROOT_PASSWORD=123123  -d mysql
