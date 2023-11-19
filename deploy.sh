set -eo pipefail

ls -a

docker compose version

cp ./envs/sandbox.pixli.dev/docker-compose.yml /usr/local/pixli/docker-compose.yml
cd  /urs/local/pixli

docker compose rm -f
docker compose up -d --build

exit 0
