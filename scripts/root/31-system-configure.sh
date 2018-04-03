set -e
echo "<root> Configuring system ..."

cp --force --recursive "${O_TARGETS_ROOT_PATH}/etc" "/"
cp --force --recursive "${O_TARGETS_ROOT_PATH}/bin" "/usr"

ln --symbolic "/usr/share/fontconfig/conf.avail/70-no-bitmaps.conf" \
              "/etc/fonts/conf.d"

echo "ODG_PLATFORM=\"${O_PLATFORM}\"" >> "/etc/profile.d/16-custom-variables.sh"
echo -e "127.0.0.1\tic.o" >> "/etc/hosts"

