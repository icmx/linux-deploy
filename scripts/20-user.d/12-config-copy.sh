set -e
echo "<user> Copying user-specific configuration ..."

REPO="${O_RESOURCES}/${USER}"

cp --recursive --force --no-target-directory   "$REPO/local/var"   "$HOME/.local/var"
cp --recursive --force --no-target-directory   "$REPO/local/share" "$HOME/.local/share"

ln --relative --symbolic --no-target-directory "$REPO/local/bin"   "$HOME/.local/bin"
