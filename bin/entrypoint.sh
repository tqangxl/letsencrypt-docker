#!/bin/bash

set -e

for var in DOMAINS EMAIL; do
    eval [[ -z \${$var+1} ]] && {
        >&2 echo "ERROR: Missing required environment variable: $var"
        exit 1
    }
done

exec "$@"
