FROM caddy:2.7.2-alpine as builder

WORKDIR /caddy
COPY Caddyfile ./Caddyfile
# Formatting caddyfile to get en error on build time and avoid notification
RUN caddy fmt --overwrite ./Caddyfile

FROM caddy:2.7.2-alpine
COPY --from=builder /caddy/Caddyfile /etc/caddy/Caddyfile
