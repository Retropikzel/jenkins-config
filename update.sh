#!/bin/bash

git pull
curl -X POST "https://jenkins.staging.scheme.org/reload-configuration-as-code/?casc-reload-token=${CASC_RELOAD_TOKEN}"

