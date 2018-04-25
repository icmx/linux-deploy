set -e
echo "<root> Installing Flatpak packages ..."

flatpak install --assumeyes --system --from "https://download.documentfoundation.org/libreoffice/flatpak/LibreOffice.flatpakref"
