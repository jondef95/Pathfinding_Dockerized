#!/bin/bash
if (( $EUID != 0 )); then
    echo "Please run as root"
    exit
fi

docker service create --replicas 2 --name pathfinder --publish 8082:8082 jth2279/pathfinding_dockerized:not_crashing
