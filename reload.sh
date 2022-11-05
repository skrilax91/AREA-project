#!/bin/bash

docker compose rm --all && docker image prune && docker compose pull && docker compose build --no-cache && docker compose up --force-recreate