# Log activity.

echo "==============================================================================="
echo "Install python 3.6"
echo "==============================================================================="

# Yum installs.

yum -y install \
    centos-release-scl

yum -y install \
    rh-python36

# Enable Python 3.6.

scl enable rh-python36 bash
