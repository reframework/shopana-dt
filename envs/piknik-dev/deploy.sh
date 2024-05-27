set -eo pipefail

echo "Deploying Pixli Sandbox"
echo $WORKDIR

mkdir -p "$WORKDIR"
mkdir -p "/piknik-static"

cp -r ./envs/piknik-dev/docker-compose.yml "$WORKDIR/docker-compose.yml"
cp -r ./envs/piknik-dev/.env "$WORKDIR/.env"
cp -r ./envs/piknik-dev/nginx.conf "$WORKDIR/nginx.conf"

# Go to the working directory
cd $WORKDIR

# Login to GitHub Container Registry
echo $DOCKER_LOGIN_PASSWORD | docker login ghcr.io -u reframework-bot --password-stdin

docker compose rm -f
docker compose --env-file .env up -d --build

exit 0
