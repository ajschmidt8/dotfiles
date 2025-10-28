#!/bin/bash
set -euo pipefail

sudo apt update
sudo apt install -y \
  zsh git dconf-cli \
  wget gnupg2 gnupg-agent dirmngr \
  cryptsetup scdaemon pcscd
