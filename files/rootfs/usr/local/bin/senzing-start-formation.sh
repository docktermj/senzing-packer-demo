#!/usr/bin/env bash

# Start mock-data-generator.py

mock-data-generator.py url-to-rabbitmq \
  --input-url https://s3.amazonaws.com/public-read-access/TestDataSets/loadtest-dataset-1M.json \
  --rabbitmq-host senzing-rabbitmq \
  --rabbitmq-password ${RABBITMQ_PASSWORD:-bitnami} \
  --rabbitmq-queue senzing-rabbitmq-queue \
  --rabbitmq-username ${RABBITMQ_USERNAME:-user} \
  --record-max 10000
