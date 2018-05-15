set -e
echo "<user> Installing user-specific software ..."

pi() {
  # Pseudo-installation
  #
  # Parameters:
  #
  #   - $1 a file name (with no extension)
  #   - $2 a file extension
  #   - $3 URL to file download
  #

  local PREF="${HOME}/.local"
  local NAME="${PREF}/${1}.${2}"

  echo "   Downloading ${1}.${2} ..."
  curl --progress-bar --location --url "${3}" --output "${NAME}"
  mkdir --parents "${PREF}/opt/${1}"
  tar   --extract --verbose --file "${NAME}" --directory "${PREF}/opt/${1}" --strip-components 1
  rm    "${NAME}"
}

tor_version=$(
  curl --silent "https://www.torproject.org/projects/torbrowser.html" | \
  grep --perl-regexp --only-matching "<th>GNU/Linux.+\(\K[^\)]+"
)

pi "firefox-stable" "tar.bz2" "http://download.mozilla.org/?product=firefox-latest&os=linux64&lang=en-US"
pi "firefox-beta"   "tar.bz2" "http://download.mozilla.org/?product=firefox-beta-latest&os=linux64&lang=en-US"
#pi "sublime_text"   "tar.bz2" "http://download.sublimetext.com/sublime_text_3_build_3143_x64.tar.bz2"
pi "sublime_text"   "tar.bz2" "http://download.sublimetext.com/sublime_text_3_build_3170_x64.tar.bz2"
pi "tor-browser"    "tar.xz"  "http://www.torproject.org/dist/torbrowser/${tor_version}/tor-browser-linux64-${tor_version}_en-US.tar.xz"

cp --recursive "${HOME}/.local/var/mozilla/firefox/ProfilesTemplate" "${HOME}/.local/var/mozilla/firefox/Profiles/Beta"
cp --recursive "${HOME}/.local/var/mozilla/firefox/ProfilesTemplate" "${HOME}/.local/var/mozilla/firefox/Profiles/Stable"
