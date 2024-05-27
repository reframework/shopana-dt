set -eo pipefail

echo "Deploying Pixli Sandbox"

mkdir -p "$WORKDIR"
mkdir -p "$NGINX_STATIC_ROOT"

cp -r ./envs/${DEPLOY_ENV}/docker-compose.yml "$WORKDIR/docker-compose.yml"
cp -r ./envs/${DEPLOY_ENV}/.env "$WORKDIR/.env"

cd "$WORKDIR"

# Login to GitHub Container Registry
echo $DOCKER_LOGIN_PASSWORD | docker login ghcr.io -u reframework-bot --password-stdin

docker compose rm -f
docker compose --env-file "${WORKDIR}/.env" up -d --build

exit 0
