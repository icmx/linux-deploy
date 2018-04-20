set -e
echo "<user> Linking user-specific configuration ..."

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

  echo "   Creating symlink ${1} → ${2} ..."

  if [[ ! -e "${2}" ]]
  then
    mkdir --parents "${2}"
  fi

  ln --force --relative --symbolic --no-target-directory "${2}" "${1}"
}

# Officially supported files and directories
sl "${HOME}/.config/bspwm"            "${O_RESOURCES}/${USER}/config/bspwm"
sl "${HOME}/.config/compton.conf"     "${O_RESOURCES}/${USER}/config/compton/compton.conf"
sl "${HOME}/.config/dunst"            "${O_RESOURCES}/${USER}/config/dunst"
sl "${HOME}/.config/gimp"             "${O_RESOURCES}/${USER}/config/gimp"
sl "${HOME}/.config/gtk-2.0"          "${O_RESOURCES}/${USER}/config/gtk-2.0"
sl "${HOME}/.config/gtk-3.0"          "${O_RESOURCES}/${USER}/config/gtk-3.0"
sl "${HOME}/.config/htop"             "${O_RESOURCES}/${USER}/config/htop"
sl "${HOME}/.config/inkscape"         "${O_RESOURCES}/${USER}/config/inkscape"
sl "${HOME}/.config/mimeapps.list"    "${O_RESOURCES}/${USER}/config/xdg/mimeapps.list"
sl "${HOME}/.config/mpv"              "${O_RESOURCES}/${USER}/config/mpv"
sl "${HOME}/.config/nano"             "${O_RESOURCES}/${USER}/config/nano"
sl "${HOME}/.config/newsboat"         "${O_RESOURCES}/${USER}/config/newsboat"
sl "${HOME}/.config/polybar"          "${O_RESOURCES}/${USER}/config/polybar"
sl "${HOME}/.config/ranger"           "${O_RESOURCES}/${USER}/config/ranger"
sl "${HOME}/.config/rofi"             "${O_RESOURCES}/${USER}/config/rofi"
sl "${HOME}/.config/sublime-text-3"   "${O_RESOURCES}/${USER}/config/sublime-text-3"
sl "${HOME}/.config/sxhkd"            "${O_RESOURCES}/${USER}/config/sxhkd"
sl "${HOME}/.config/user-dirs.dirs"   "${O_RESOURCES}/${USER}/config/xdg/user-dirs.dirs"
sl "${HOME}/.config/user-dirs.locale" "${O_RESOURCES}/${USER}/config/xdg/user-dirs.locale"
sl "${HOME}/.config/viewnior"         "${O_RESOURCES}/${USER}/config/viewnior"
sl "${HOME}/.config/wget"             "${O_RESOURCES}/${USER}/config/wget"

# Custom made up directories (they're officially not supported, you need to
# use additional symlinks, environment variables or something)
sl "${HOME}/.config/bash"             "${O_RESOURCES}/${USER}/config/bash"
sl "${HOME}/.config/cron"             "${O_RESOURCES}/${USER}/config/cron"
sl "${HOME}/.config/sh"               "${O_RESOURCES}/${USER}/config/sh"
sl "${HOME}/.config/urxvt"            "${O_RESOURCES}/${USER}/config/urxvt"
sl "${HOME}/.config/xorg"             "${O_RESOURCES}/${USER}/config/xorg"

# Additional symlinks for GREAT software that doesn't support ~/.config
sl "${HOME}/.mozilla"                 "${HOME}/.local/var/mozilla"
sl "${HOME}/.var"                     "${HOME}/.local/var/flatpak"
