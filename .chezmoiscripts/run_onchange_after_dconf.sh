#!/bin/bash
set -euo pipefail

# set GNOME Terminal settings
UUID=$(gsettings get org.gnome.Terminal.ProfilesList default | tr -d \')

gsettings set \
  org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:${UUID}/ \
  font 'FiraMono Nerd Font 16'

gsettings set \
  org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:${UUID}/ \
  default-size-columns 100
