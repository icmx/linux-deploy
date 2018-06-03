set -e

echo "<root> Setting up Sambe service ..."

shared_directory="/var/share"
mkdir --parents         "${shared_directory}"
chown "root:odg"        "${shared_directory}"
chmod u=rwx,g=rwx,o=r-x "${shared_directory}"

usermod --append --groups "odg" "${O_NONROOT}"
