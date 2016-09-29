#!/bin/bash

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# folders with ansible roles
rolesGitlab="${SCRIPT_DIR}/../roles"
rolesSServer="${SCRIPT_DIR}/../roles/support_server"
rolesAllHosts="${SCRIPT_DIR}/../roles/all_hosts"

# Ansible env var with roles paths
export ANSIBLE_ROLES_PATH=${rolesGitlab}

# Ansible config location
export ANSIBLE_CONFIG=${SCRIPT_DIR}/ansible.cfg

INVENTORY_DIR="${SCRIPT_DIR}/../inventory"

# INVENTORY can be setted with an export from command line
inventory=${INVENTORY:-${INVENTORY_DIR}/vagrant_inventory}

PLAYBOOKS_DIR="${SCRIPT_DIR}/../playbooks"
