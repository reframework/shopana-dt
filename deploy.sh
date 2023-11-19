set -eo pipefail

echo "Deploying Pixli Sandbox"

WORKDIR="/usr/local/pixli"

cp ./envs/sandbox.pixli.dev/ "$WORKDIR/"

cd "$WORKDIR"

docker compose rm -f
docker compose up -d --build

exit 0
