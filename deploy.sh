set -eo pipefail

echo "Deploying Pixli Sandbox"

WORKDIR="/usr/local/pixli"

cp ./envs/sandbox.pixli.dev/docker-compose.yml "$WORKDIR/docker-compose.yml"
cd "$WORKDIR"

docker compose rm -f
docker compose up -d --build

exit 0
