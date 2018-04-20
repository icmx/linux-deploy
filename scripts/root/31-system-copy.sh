set -e
echo "<root> Copying system configuration ..."

cp --force --recursive "$O_RESOURCES/$USER/etc" "/"
cp --force --recursive "$O_RESOURCES/$USER/bin" "/usr"

ln --force --relative --symbolic                        \
  "/usr/share/fontconfig/conf.avail/70-no-bitmaps.conf" \
  "/etc/fonts/conf.d"

ln --force --relative --symbolic --no-target-directory \
"/etc/issue.${O_PLATFORM}"                             \
"/etc/issue"

