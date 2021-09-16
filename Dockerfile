FROM stedolan/jq

FROM busybox:latest
COPY --from=0 /usr/local/bin/jq /usr/local/bin/jq

COPY ./entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
