# CI/CD

Short guide of how to set up ci/cd to the Ubuntu using buildkite and Github Actions

### SSH access

```bash
ssh root@10.10.10.10
```

### Docker and Docker Compose

https://docs.docker.com/engine/install/ubuntu/#install-using-the-repository

### Buildkite agent

https://buildkite.com/docs/agent/v3/ubuntu

- Create buildkite API Token for github actions and save it to the org secrets `RFW_BUILDKITE_TOKEN`

- Create Github token with `read:packages` permissions and save it to the file on the server

```bash
# /etc/buildkite-agent/hooks/environment
export DOCKER_LOGIN_PASSWORD=YOUR_TOKEN
export WORKDIR=path/to/project
```

- Crete SSH Key(s) (root/buildkite-agent) on the server for github repo access

https://buildkite.com/docs/agent/v3/ssh-keys


- Start agent

```bash
sudo systemctl enable buildkite-agent && sudo systemctl start buildkite-agent
```

### Install Portainer

https://docs.portainer.io/start/install-ce/server/docker/linux

<!-- Running docker compose with .env --env-file /path/to/env (.env) -->
