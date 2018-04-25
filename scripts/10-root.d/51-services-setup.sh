set -e
echo "<root> Setting up services ..."

rm --force --recursive                 "/var/service/dhcpcd"
rm --force --recursive                 "/var/service/wpa_supplicant"

ln --symbolic "/etc/sv/acpid"          "/var/service"
ln --symbolic "/etc/sv/alsa"           "/var/service"
ln --symbolic "/etc/sv/cgmanager"      "/var/service"
ln --symbolic "/etc/sv/consolekit"     "/var/service"
ln --symbolic "/etc/sv/dbus"           "/var/service"
ln --symbolic "/etc/sv/dnsmasq"        "/var/service"
ln --symbolic "/etc/sv/libvirtd"       "/var/service"
ln --symbolic "/etc/sv/nanoklogd"      "/var/service"
ln --symbolic "/etc/sv/NetworkManager" "/var/service"
ln --symbolic "/etc/sv/ntpd"           "/var/service"
ln --symbolic "/etc/sv/socklog-unix"   "/var/service"
ln --symbolic "/etc/sv/virtlockd"      "/var/service"
ln --symbolic "/etc/sv/virtlogd"       "/var/service"
