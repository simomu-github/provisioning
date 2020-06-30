#!/bin/bash

set -eu

EXECUTE_DIR=$(cd $(dirname $0) && pwd)

docker build -f ${EXECUTE_DIR}/Dockerfile -t provisioning_test:latest ${EXECUTE_DIR}/../
docker run --rm provisioning_test:latest
