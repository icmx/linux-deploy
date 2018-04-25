set -e
echo "<user> Copying user-specific configuration ..."

cp --recursive --force --no-target-directory "${O_RESOURCES}/${USER}/local/var"   "${HOME}/.local/var"
cp --recursive --force --no-target-directory "${O_RESOURCES}/${USER}/local/share" "${HOME}/.local/share"

ln --relative --symbolic --no-target-directory "${O_RESOURCES}/${USER}/local/bin" "${HOME}/.local/bin"
