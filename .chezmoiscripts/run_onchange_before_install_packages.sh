#!/bin/bash
set -euo pipefail

sudo apt update
sudo apt install -y \
  zsh git dconf-cli
