set -e
echo "<root> Configuring package manager ..."

xbps-install --yes "void-repo-nonfree"
xbps-install --yes "void-repo-multilib"

xbps-install --yes --sync --update
