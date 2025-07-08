#!/bin/bash
set -euo pipefail

# TODO: use static versions & `renovate` to update
mise use -g node@latest
mise use -g go@latest
mise use -g jq@latest
mise use -g yq@latest
mise use -g gh@latest
mise use -g aws-cli@latest
mise use -g bun@latest

mise prune -y
