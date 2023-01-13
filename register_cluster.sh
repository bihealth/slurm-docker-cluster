#!/bin/bash
set -e

docker exec slurmctld bash -c "/usr/bin/sacctmgr --immediate add cluster name=cubi" && \
docker-compose restart slurmdbd slurmctld
