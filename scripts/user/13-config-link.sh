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
sl "${HOME}/.config/bspwm"            "${O_TARGETS_USER_PATH}/config/bspwm"
sl "${HOME}/.config/compton.conf"     "${O_TARGETS_USER_PATH}/config/compton/compton.conf"
sl "${HOME}/.config/dunst"            "${O_TARGETS_USER_PATH}/config/dunst"
sl "${HOME}/.config/gimp"             "${O_TARGETS_USER_PATH}/config/gimp"
sl "${HOME}/.config/gtk-2.0"          "${O_TARGETS_USER_PATH}/config/gtk-2.0"
sl "${HOME}/.config/gtk-3.0"          "${O_TARGETS_USER_PATH}/config/gtk-3.0"
sl "${HOME}/.config/htop"             "${O_TARGETS_USER_PATH}/config/htop"
sl "${HOME}/.config/inkscape"         "${O_TARGETS_USER_PATH}/config/inkscape"
sl "${HOME}/.config/mimeapps.list"    "${O_TARGETS_USER_PATH}/config/xdg/mimeapps.list"
sl "${HOME}/.config/mpv"              "${O_TARGETS_USER_PATH}/config/mpv"
sl "${HOME}/.config/nano"             "${O_TARGETS_USER_PATH}/config/nano"
sl "${HOME}/.config/newsboat"         "${O_TARGETS_USER_PATH}/config/newsboat"
sl "${HOME}/.config/polybar"          "${O_TARGETS_USER_PATH}/config/polybar"
sl "${HOME}/.config/ranger"           "${O_TARGETS_USER_PATH}/config/ranger"
sl "${HOME}/.config/rofi"             "${O_TARGETS_USER_PATH}/config/rofi"
sl "${HOME}/.config/sublime-text-3"   "${O_TARGETS_USER_PATH}/config/sublime-text-3"
sl "${HOME}/.config/sxhkd"            "${O_TARGETS_USER_PATH}/config/sxhkd"
sl "${HOME}/.config/user-dirs.dirs"   "${O_TARGETS_USER_PATH}/config/xdg/user-dirs.dirs"
sl "${HOME}/.config/user-dirs.locale" "${O_TARGETS_USER_PATH}/config/xdg/user-dirs.locale"
sl "${HOME}/.config/viewnior"         "${O_TARGETS_USER_PATH}/config/viewnior"
sl "${HOME}/.config/wget"             "${O_TARGETS_USER_PATH}/config/wget"

# Custom made up directories (they're officially not supported, you need to
# use additional symlinks, environment variables or something)
sl "${HOME}/.config/bash"             "${O_TARGETS_USER_PATH}/config/bash"
sl "${HOME}/.config/cron"             "${O_TARGETS_USER_PATH}/config/cron"
sl "${HOME}/.config/sh"               "${O_TARGETS_USER_PATH}/config/sh"
sl "${HOME}/.config/urxvt"            "${O_TARGETS_USER_PATH}/config/urxvt"
sl "${HOME}/.config/xorg"             "${O_TARGETS_USER_PATH}/config/xorg"

# Additional symlinks for GREAT software that doesn't support ~/.config
sl "${HOME}/.mozilla"                 "${HOME}/.local/var/mozilla"
sl "${HOME}/.var"                     "${HOME}/.local/var/flatpak"
