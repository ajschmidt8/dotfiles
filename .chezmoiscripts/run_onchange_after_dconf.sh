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

# https://github.com/Gogh-Co/Gogh/blob/master/installs/city-lights.sh
export COLOR_01="#41505E"         # Black (Host)
export COLOR_02="#D95468"         # Red (Syntax string)
export COLOR_03="#8BD49C"         # Green (Command)
export COLOR_04="#EBBF83"         # Yellow (Command second)
export COLOR_05="#539AFC"         # Blue (Path)
export COLOR_06="#B62D65"         # Magenta (Syntax var)
export COLOR_07="#70E1E8"         # Cyan (Prompt)
export COLOR_08="#FFFFFF"         # White

export COLOR_09="#41505E"         # Bright Black
export COLOR_10="#D95468"         # Bright Red (Command error)
export COLOR_11="#8BD49C"         # Bright Green (Exec)
export COLOR_12="#EBBF83"         # Bright Yellow
export COLOR_13="#539AFC"         # Bright Blue (Folder)
export COLOR_14="#B62D65"         # Bright Magenta
export COLOR_15="#70E1E8"         # Bright Cyan
export COLOR_16="#FFFFFF"         # Bright White

export BACKGROUND_COLOR="#171D23" # Background
export FOREGROUND_COLOR="#FFFFFF" # Foreground (Text)

export CURSOR_COLOR="#008B94" # Cursor

# converts hex color to dconf compatible output
cc() {
  local color="$1"
  local hex="${color#"#"}"
  local r=${hex:0:2}
  local g=${hex:2:2}
  local b=${hex:4:2}

  echo "#$r$r$g$g$b$b"
}

gsettings set \
  org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:${UUID}/ \
  palette "[
    \"$(cc $COLOR_01)\",
    \"$(cc $COLOR_02)\",
    \"$(cc $COLOR_03)\",
    \"$(cc $COLOR_04)\",
    \"$(cc $COLOR_05)\",
    \"$(cc $COLOR_06)\",
    \"$(cc $COLOR_07)\",
    \"$(cc $COLOR_08)\",
    \"$(cc $COLOR_09)\",
    \"$(cc $COLOR_10)\",
    \"$(cc $COLOR_11)\",
    \"$(cc $COLOR_12)\",
    \"$(cc $COLOR_13)\",
    \"$(cc $COLOR_14)\",
    \"$(cc $COLOR_15)\",
    \"$(cc $COLOR_16)\"
  ]"

# everything below was adapted from https://github.com/Gogh-Co/Gogh/blob/master/apply-colors.sh
gsettings set \
  org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:${UUID}/ \
  cursor-background-color "$(cc $CURSOR_COLOR)"
gsettings set \
  org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:${UUID}/ \
  cursor-colors-set true
gsettings set \
  org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:${UUID}/ \
  cursor-foreground-color "$(cc $BACKGROUND_COLOR)"
gsettings set \
  org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:${UUID}/ \
  foreground-color "$(cc $FOREGROUND_COLOR)"
gsettings set \
  org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:${UUID}/ \
  background-color "$(cc $BACKGROUND_COLOR)"
gsettings set \
  org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:${UUID}/ \
  bold-color "$(cc $FOREGROUND_COLOR)"
gsettings set \
  org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:${UUID}/ \
  use-theme-colors false
gsettings set \
  org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:${UUID}/ \
  use-theme-transparency false
gsettings set \
  org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:${UUID}/ \
  use-transparent-background false
gsettings set \
  org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:${UUID}/ \
  highlight-colors-set false
gsettings set \
  org.gnome.Terminal.Legacy.Profile:/org/gnome/terminal/legacy/profiles:/:${UUID}/ \
  bold-color-same-as-fg true
