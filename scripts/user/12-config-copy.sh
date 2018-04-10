set -e
echo "<user> Copying user-specific configuration ..."

cp --recursive --force --no-target-directory "${O_TARGETS_USER_PATH}/local/var"   "${HOME}/.local/var"
cp --recursive --force --no-target-directory "${O_TARGETS_USER_PATH}/local/share" "${HOME}/.local/share"

ln --relative --symbolic --no-target-directory "${HOME}/.local/bin" "${O_TARGETS_USER_PATH}/local/bin"
