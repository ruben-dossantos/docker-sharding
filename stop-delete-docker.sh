#!/bin/bash

CENAS=$(docker ps -a | awk '{print $1}')
for x in $CENAS
do
	docker kill $x && docker rm $x
done

