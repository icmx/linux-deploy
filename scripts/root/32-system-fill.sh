set -e
echo "<root> Filling system configuration ..."

echo "ODG_PLATFORM=\"${O_PLATFORM}\"" >> "/etc/profile.d/16-custom-variables.sh"
echo -e "127.0.0.1\tic.o" >> "/etc/hosts"
