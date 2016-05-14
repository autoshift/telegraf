#!/bin/bash

DOCKER_HOST_IP=$(/sbin/ip route|awk '/default/ { print $3 }');

sed -i "s| docker-host-ip = .* #DOCKERHOSTIP|  docker-host-ip = \"$DOCKER_HOST_IP\" #DOCKERHOSTIP|g" /telegraf.conf;

sleep 10;

telegraf -config /telegraf.conf;
