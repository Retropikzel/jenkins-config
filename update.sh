#!/bin/bash

git pull
curl -X POST "https://jenkins.scheme.org/reload-configuration-as-code/?casc-reload-token=${CASC_RELOAD_TOKEN}"

