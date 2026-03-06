FROM artifacts.iflytek.com/docker-private/aiaas/venv:ubuntu22.04-cuda12.9

ENV DEBIAN_FRONTEND=noninteractive

SHELL ["/bin/bash", "-l", "-c"]
WORKDIR /workspace

RUN --mount=type=bind,source=./,target=/mnt/src cp -r /mnt/src /tmp/src \
    && cd /tmp/src \
    && bash dependencies.sh -y \
    && rm -rf /tmp/src