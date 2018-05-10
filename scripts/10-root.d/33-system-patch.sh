set -e
echo "<root> Patching additional system components ..."

# /bin/startx patch - it's acrually a shell script
# After patch it will read ~/.config/xorg/xinitrc istead of ~/.xinitrc
sed --in-place "s:\$HOME/.xinitrc:\$HOME/.config/xorg/xinitrc:g" "/usr/local/bin/startx"

# /etc/sudoers pacth
# Removes "$USER" template by actual user name
sed --in-place "s:\$USER:${O_NONROOT}:g" "/etc/sudoers"
