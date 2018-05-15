set -e
echo "<user> Linking user-specific configuration ..."

REPO="${O_RESOURCES}/${USER}"

sl() {
  # Linking function (creates symboliс link).
  #
  # Parameters:
  #
  #   - $1 is the destination (where you want to create the link)
  #   - $2 is the source (what file or directory you want to be linked)
  #
  # After the 'ln' command you'll get the link like "${1} -> ${2}", so
  # you can read and write to ${1}, but the real file or directory will
  # be ${2}.

  echo "   Creating symlink $1 → $2 ..."

  if [[ ! -e "$2" ]]
  then
    mkdir --parents "$2"
  fi

  ln --force --relative --symbolic --no-target-directory "$2" "$1"
}

# Officially supported files and directories
sl "$HOME/.config/bspwm"             "$REPO/config/bspwm"
sl "$HOME/.config/compton.conf"      "$REPO/config/compton/compton.conf"
sl "$HOME/.config/dunst"             "$REPO/config/dunst"
sl "$HOME/.config/gimp"              "$REPO/config/gimp"
sl "$HOME/.config/gtk-2.0"           "$REPO/config/gtk-2.0"
sl "$HOME/.config/gtk-3.0"           "$REPO/config/gtk-3.0"
sl "$HOME/.config/htop"              "$REPO/config/htop"
sl "$HOME/.config/inkscape"          "$REPO/config/inkscape"
sl "$HOME/.config/mimeapps.list"     "$REPO/config/xdg/mimeapps.list"
sl "$HOME/.config/mpv"               "$REPO/config/mpv"
sl "$HOME/.config/nano"              "$REPO/config/nano"
sl "$HOME/.config/newsboat"          "$REPO/config/newsboat"
sl "$HOME/.config/polybar"           "$REPO/config/polybar"
sl "$HOME/.config/ranger"            "$REPO/config/ranger"
sl "$HOME/.config/rofi"              "$REPO/config/rofi"
sl "$HOME/.config/sublime-text-3"    "$REPO/config/sublime-text-3"
sl "$HOME/.config/sxhkd"             "$REPO/config/sxhkd"
sl "$HOME/.config/user-dirs.dirs"    "$REPO/config/xdg/user-dirs.dirs"
sl "$HOME/.config/user-dirs.locale"  "$REPO/config/xdg/user-dirs.locale"
sl "$HOME/.config/viewnior"          "$REPO/config/viewnior"
sl "$HOME/.config/wget"              "$REPO/config/wget"

# Custom made up directories (they're officially not supported, you need
# to use additional symlinks, environment variables or something)
sl "$HOME/.config/bash"              "$REPO/config/bash"
sl "$HOME/.config/cron"              "$REPO/config/cron"
sl "$HOME/.config/sh"                "$REPO/config/sh"
sl "$HOME/.config/urxvt"             "$REPO/config/urxvt"
sl "$HOME/.config/xorg"              "$REPO/config/xorg"

# Additional symlinks for GREAT software that doesn't support ~/.config
sl "$HOME/.mozilla"                  "$HOME/.local/var/mozilla"
sl "$HOME/.var"                      "$HOME/.local/var/flatpak"
