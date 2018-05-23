set -e
echo "<user> Installing user-specific software ..."


pi() {
  # pi - pseudo-installation
  #
  #   1  name  file name without extension
  #   2  ext   file extension (.tar.gz e.g.)
  #   3  link  url to file

  local name="${1}"
  local  ext="${2}"
  local link="${3}"

  local prefix="${HOME}/.local"
  local file="${prefix}/${name}.${ext}"

  echo "    Downloading ${link} to ${file} ..."
  curl --progress-bar --location --url "${link}" --output "${file}"
  mkdir --parents "${prefix}/opt/${name}"
  tar --extract --verbose --file "${file}" --directory "$PREF/opt/${name}" --strip-components 1
  rm "${file}"
}


lv() {
  # lv - latest version
  #
  #   1  link        url to page where lv should find the varsion number
  #   2  expression  regular expression to retrieve version number
  #
  # Dedicated to those nice people who can't make an always-latest
  # symlink at their repos. Thaks, I really appreciate that.

  local link="${1}"
  local expression="${2}"

  curl --silent --location                         -- "${link}"       |\
  grep --perl-regexp --only-matching --max-count 1 -- "${expression}"
}

tor_version=$(lv "http://torproject.org/projects/torbrowser.html" "<th>GNU/Linux.+\(\K[^\)]+")
sublimetext_version=$(lv "http://sublimetext.com/3" "Build \K\d+")


pi "firefox-stable" "tar.bz2" "http://download.mozilla.org/?product=firefox-latest&os=linux64&lang=en-US"
pi "firefox-beta"   "tar.bz2" "http://download.mozilla.org/?product=firefox-beta-latest&os=linux64&lang=en-US"
pi "sublime_text"   "tar.bz2" "http://download.sublimetext.com/sublime_text_3_build_${sublimetext_version}_x64.tar.bz2"
pi "tor-browser"    "tar.xz"  "http://www.torproject.org/dist/torbrowser/${tor_version}/tor-browser-linux64-${tor_version}_en-US.tar.xz"

cp --recursive "$HOME/.local/var/mozilla/firefox/ProfilesTemplate" "$HOME/.local/var/mozilla/firefox/Profiles/Beta"
cp --recursive "$HOME/.local/var/mozilla/firefox/ProfilesTemplate" "$HOME/.local/var/mozilla/firefox/Profiles/Stable"
