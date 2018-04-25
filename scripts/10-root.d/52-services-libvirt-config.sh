set -e
echo "<root> Setting up libvirt ..."
echo "       This might take a while"

# Makes non-root user to be able to use QEMU/KVM (virt-manager actually)
usermod --append --groups "libvirt" "${O_NONROOT}"

# This might be tricky, it will wait while 'sv' gets started...
sleep "15s"
sv start "libvirtd"
# Next, waiting for 'libvirtd'...
sleep "15s"
virsh net-autostart "default"
# Not really clean and nice, but it works
