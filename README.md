# pixli-dt

Deploy stacks

### Find a portainer stack docker compose
```bash

cd "$(find /var/lib/docker/volumes/portainer_data/_data/compose -type d -name "sandbox.pixli.dev" -print -quit)" || echo "Folder not found."

```

### Login to registry

```bash

# /etc/buildkite-agent/hooks/environment
export DOCKER_LOGIN_PASSWORD=YOUR_TOKEN

# In script before docker pull
echo $DOCKER_LOGIN_PASSWORD | docker login ghcr.io -u USERNAME --password-stdin

```

### Starting BK agent

```bash

# Set a buildkite-agent user (pipelines running using this user)
sudo su buildkite-agent
# Runs in background
nohup buildkite-agent start &

```
