# Portainer

### Find a portainer stack docker compose
```bash

cd "$(find /var/lib/docker/volumes/portainer_data/_data/compose -type d -name "sandbox.pixli.dev" -print -quit)" || echo "Folder not found."

```
