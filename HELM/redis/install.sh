#!/usr/bin/env bash

helm install redis-release \
  -f values.yaml \
  bitnami/redis
