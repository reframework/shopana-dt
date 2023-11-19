set -eo pipefail

ls -a

docker compose version

cp ./envs/sandbox.pixli.dev/docker-compose.yml /usr/local/pixli/sandbox.pixli.dev/docker-compose.yml
cd ./urs/pixli/sandbox.pixli.dev

docker compose rm -f
docker compose up -d --build

exit 0
