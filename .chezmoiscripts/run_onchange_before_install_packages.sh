#!/bin/bash
set -euo pipefail

sudo apt update
sudo apt install -y \
  zsh git dconf-cli \
  wget gnupg2 gnupg-agent dirmngr \
  cryptsetup scdaemon pcscd \
  build-essential autoconf m4  `: # elixir/erlang deps start: https://github.com/asdf-vm/asdf-erlang/blob/7d76f6bed86d01c77b792534c5d69bcadb08b9eb/README.md#ubuntu-2004-lts` \
  libncurses5-dev libwxgtk3.0-gtk3-dev \
  libwxgtk-webview3.0-gtk3-dev libgl1-mesa-dev \
  libglu1-mesa-dev libpng-dev libssh-dev \
  unixodbc-dev xsltproc fop libxml2-utils \
  libncurses-dev openjdk-11-jdk `: # elixir/erlang deps stop`


