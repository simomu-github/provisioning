#!/bin/bash

set -eu

EXECUTE_DIR=$(cd $(dirname $0) && pwd)

export USER="test"

${EXECUTE_DIR}/../run.sh --skip-tags=skip_test --check
${EXECUTE_DIR}/../run.sh --skip-tags=skip_test
