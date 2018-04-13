set -e
echo "<root> Copying system configuration ..."

cp --force --recursive "${O_TARGETS_ROOT_PATH}/etc" "/"
cp --force --recursive "${O_TARGETS_ROOT_PATH}/bin" "/usr"

ln --force --relative --symbolic                        \
  "/usr/share/fontconfig/conf.avail/70-no-bitmaps.conf" \
  "/etc/fonts/conf.d"

ln --force --relative --symbolic --no-target-directory \
"/etc/issue.${O_PALTFORM}"                             \
"/etc/issue"

