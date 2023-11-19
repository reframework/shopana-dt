set -eo pipefail

echo "Deploying Pixli Sandbox"

WORKDIR="/usr/local/pixli"

ls ./envs/sandbox.pixli.dev -a

cp -r ./envs/sandbox.pixli.dev/docker-compose.yml "$WORKDIR/docker-compose.yml"
cp -r ./envs/sandbox.pixli.dev/.env "$WORKDIR/.env"

ls "$WORKDIR" -a

cd "$WORKDIR"

docker compose rm -f
docker compose up -d --build

exit 0
