#!/bin/bash -e
cd "${0%/*}" || exit 1 # Set Current Dir to the script's dir

HOST=$1
if [ -z "$HOST" ]; then
  print "Critical Error: HOST is not given"
  exit 1
fi

python -m pytest -ra --verbose ./src/e2e.py --host "$HOST"
