#!/bin/bash

FILE_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
. ${FILE_DIR}/init.sh

ansible-playbook -i ${inventory} \
                    ${PLAYBOOKS_DIR}/generate-hosts-file.yml "$@"
