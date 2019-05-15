# Log activity.

echo "==============================================================================="
echo "cleanup.sh"
echo "==============================================================================="

# Yum cleaning.

yum -y erase \
    gtk2 \
    libX11 \
    hicolor-icon-theme \
    avahi \
    freetype \
    bitstream-vera-fonts

yum -y clean all

# Remove files.

rm -rf VBoxGuestAdditions_*.iso
rm -rf /tmp/rubygems-*

