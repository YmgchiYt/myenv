#!/bin/bash

# read conf
PWD=$(cd $(dirname ${BASH_SOURCE[0];}); pwd)
. ${PWD}/conf.sh

CMD=${1}
shift
ARGS="$@"

${WORK_DIR}/venv/bin/${CMD} --inventory=${WORK_DIR}/config/inventory.yml ${ARGS}
