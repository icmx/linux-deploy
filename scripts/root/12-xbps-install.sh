set -e
echo "<root> Installing extra packahes ..."

get_xbps_list() {
  echo -e $(cut -f 1 -d "#" "${1}" | tr -s "\n" " ")
}

xbps_common="$(get_xbps_list   $O_SOFTWARE_LIST_PATH)"
xbps_platform="$(get_xbps_list $O_SOFTWARE_PLATFORM_LIST_PATH)"

xbps-install --yes ${xbps_common} ${xbps_platform}
