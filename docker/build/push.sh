#!/bin/bash
source .env

# Overwrite GIT_REVISION with first argument if passed
if [ -n "$1" ]; then
  GIT_REVISION=$1
fi

docker push docker.ub.gu.se/bibliotekskort-frontend:${GIT_REVISION} && \
docker push docker.ub.gu.se/bibliotekskort-backend:${GIT_REVISION}
