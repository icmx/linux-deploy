set -e
echo "<user> Creating initial hiararchy ..."

mkdir --parents "${HOME}/.config"
mkdir --parents "${HOME}/.local"

mkdir --parents "${HOME}/Desktop"
mkdir --parents "${HOME}/Documents"
mkdir --parents "${HOME}/Downloads"
mkdir --parents "${HOME}/Music"
mkdir --parents "${HOME}/Pictures"
mkdir --parents "${HOME}/Public"
mkdir --parents "${HOME}/Templates"
mkdir --parents "${HOME}/Videos"

mkdir --parents "${HOME}/Pictures/Wallpapers"
mkdir --parents "${HOME}/Projects"

mkdir --parents "${HOME}/.config/gimp/2.8"
mkdir --parents "${HOME}/.local/var/bash"
mkdir --parents "${HOME}/.local/var/less"
mkdir --parents "${HOME}/.local/var/libvirt/images"
mkdir --parents "${HOME}/.local/var/libvirt/machines"
mkdir --parents "${HOME}/.local/var/mozilla/firefox/Profiles"
mkdir --parents "${HOME}/.local/var/wine/bottles/x32"
