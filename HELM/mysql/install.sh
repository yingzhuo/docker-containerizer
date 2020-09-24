#!/usr/bin/env bash

helm install mysql-release \
  -f values.yaml \
  bitnami/mysql
