ARG AUTOHEAL_VERSION=${AUTOHEAL_VERSION:-latest}

FROM willfarrell/autoheal:${AUTOHEAL_VERSION:-latest}

# HEALTHCHECK --interval=5s CMD pgrep -f autoheal || exit 1

# RUN addgroup -S livelink && adduser -S livelink -G livelink
# USER livelink
