set -eo pipefail

echo "Deploying Pixli Sandbox"

WORKDIR="/usr/local/pixli"

ls ./envs/sandbox.pixli.dev -a

cp ./envs/sandbox.pixli.dev/* "$WORKDIR"
mv "$WORKDIR/.env.local" "$WORKDIR/.env"

cd "$WORKDIR"

docker compose rm -f
docker compose up -d --build

exit 0
