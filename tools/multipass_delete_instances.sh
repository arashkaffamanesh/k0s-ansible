#!/usr/bin/env bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

# Default to 7 VMs
NUMBER_OF_VMS=${1:-7}

for ((i = 1 ; i <= "${NUMBER_OF_VMS}" ; i++)); do
  echo "[${i}/${NUMBER_OF_VMS}] deleting instance k0s-${i} with multipass..."
  multipass delete \
  k0s-"${i}" 
done

multipass purge

multipass list 

# Or use this simple command to delete all multipass vms

# multipass delete $(multipass list --format csv | grep 'k0s' | cut -d',' -f1)
# multipass purge



