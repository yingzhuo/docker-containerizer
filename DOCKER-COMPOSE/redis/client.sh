#!/usr/bin/env bash

docker exec -it redis redis-cli -h localhost -p 6379 --raw
