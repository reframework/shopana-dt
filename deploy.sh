#!/bin/bash

set -eo pipefail

ls -a

docker compose version

cd envs/sandbox.pixli.dev

docker compose up -d

exit 0
