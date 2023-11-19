# pixli-dt

Deploy stacks

### Find a portainer stack docker compose
```bash

cd "$(find /var/lib/docker/volumes/portainer_data/_data/compose -type d -name "sandbox.pixli.dev" -print -quit)" || echo "Folder not found."

```

### Restart a service in portainer stack

```


```

### Login to registry

```bash

export CR_PAT=YOUR_TOKEN
echo $CR_PAT | docker login ghcr.io -u USERNAME --password-stdin

```
