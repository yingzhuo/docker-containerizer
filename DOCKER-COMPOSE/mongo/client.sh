#!/usr/bin/env bash

docker exec -it mongodb mongo -host localhost -port 27017 -u root -p root --authenticationDatabase admin local