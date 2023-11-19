set -eo pipefail

echo "Deploying Pixli Sandbox"

WORKDIR="/usr/local/pixli"

ls ./envs/sandbox.pixli.dev -a

cp -r ./envs/sandbox.pixli.dev "$WORKDIR"

ls "$WORKDIR" -a

cd "$WORKDIR"

docker compose rm -f
docker compose up -d --build

exit 0
