# Log activity.

echo "==============================================================================="
echo "Install python 3.6"
echo "==============================================================================="

# Yum installs.

yum -y install \
    python36u \
    python36u-pip

# Make softlinks

ln -sf /usr/bin/pip3.6    /usr/local/bin/pip
ln -sf /usr/bin/python3.6 /usr/local/bin/python
ln -sf /usr/bin/python3.6 /usr/local/bin/python3
