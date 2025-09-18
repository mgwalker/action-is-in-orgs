FROM ghcr.io/jqlang/jq:1.8.1 AS build

FROM busybox:latest
COPY --from=build /jq /usr/local/bin/jq

COPY ./entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
