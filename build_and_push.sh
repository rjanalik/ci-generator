#!/bin/bash

PYTHON_VERSION="3.12.3"
DOCKER_TAG="rjanalik/ci-generator:python-${PYTHON_VERSION}"

podman build -f Dockerfile --format=docker --build-arg "PYTHON_VERSION=${PYTHON_VERSION}" --tag=${DOCKER_TAG} .
podman push ${DOCKER_TAG}
