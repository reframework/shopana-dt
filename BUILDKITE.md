# Setting up Buildkite for ci/cd

https://buildkite.com

### Login to registry

Update the env file for logging in to github packages

```bash

# /etc/buildkite-agent/hooks/environment
export DOCKER_LOGIN_PASSWORD=YOUR_TOKEN

# In script before docker pull
echo $DOCKER_LOGIN_PASSWORD | docker login ghcr.io -u USERNAME --password-stdin

```

### Starting BK agent

Start the agent when it's down

```bash

# Set a buildkite-agent user (pipelines running using this user)
sudo su buildkite-agent
# Runs in background
nohup buildkite-agent start &

```
