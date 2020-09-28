#!/usr/bin/env bash

helm install rabbitmq-release \
  -f values.yaml \
  bitnami/rabbitmq
