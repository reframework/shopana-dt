set -eo pipefail

echo "Deploying Pixli Sandbox"

mkdir -p "$WORKDIR"

cp -r ./envs/${BUILDKITE_DEPLOY_ENV}/docker-compose.yml "$WORKDIR/docker-compose.yml"
cp -r ./envs/${BUILDKITE_DEPLOY_ENV}/.env "$WORKDIR/.env"

cd "$WORKDIR"

docker compose rm -f
docker compose up -d --build

exit 0
