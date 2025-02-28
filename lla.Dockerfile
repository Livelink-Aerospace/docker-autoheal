ARG PLATFORM=${PLATFORM:-linux/arm64/v8}
ARG AUTOHEAL_VERSION=${AUTOHEAL_VERSION:-latest}

FROM --platform=${PLATFORM} original-autoheal

# This is a simple healthcheck that will always return 0
# Not really needed for the autoheal container, but it's good practice to have one
HEALTHCHECK --interval=10s --timeout=10s --retries=2 --start-period=10s \
    CMD exit 0

RUN addgroup -S livelink && adduser -S livelink -G livelink
USER livelink
