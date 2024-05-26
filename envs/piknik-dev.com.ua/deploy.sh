set -eo pipefail

echo "Deploying Pixli Sandbox"

mkdir -p "$WORKDIR"
cp -r ./envs/sandbox.pixli.dev/docker-compose.yml "$WORKDIR/docker-compose.yml"
cp -r ./envs/sandbox.pixli.dev/.env "$WORKDIR/.env"

cd "$WORKDIR"

docker compose rm -f
docker compose up -d --build

exit 0
