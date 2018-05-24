set -e
echo "<root> Copying system configuration ..."

# /resources/root e.g.
PREF="${O_RESOURCES}/${USER}"

# Executables
cp --force --recursive "${PREF}/usr/local/bin" "/usr/local"
cp --force --recursive "${PREF}/usr/local/lib" "/usr/local"

ln --force --relative --symbolic --no-target-directory "/usr/bin/ranger" "/usr/local/bin/e"
ln --force --relative --symbolic --no-target-directory "/usr/bin/bash"   "/usr/local/bin/b"

# Making patched version of startx - will be patched in the next script
cp --force                                             "/usr/bin/startx"       "/usr/local/bin/startx"
ln --force --relative --symbolic --no-target-directory "/usr/local/bin/startx" "/usr/local/bin/x"


# Configuration
cp --force --recursive "${PREF}/etc" "/"

ln --force --relative --symbolic                       "/usr/share/fontconfig/conf.avail/70-no-bitmaps.conf" "/etc/fonts/conf.d"
ln --force --relative --symbolic --no-target-directory "/etc/issue.${O_PLATFORM}"                            "/etc/issue"
ln --force --relative --symbolic --no-target-directory "/etc/motd.${O_PLATFORM}"                             "/etc/motd"
