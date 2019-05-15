# Log activity.

echo "==============================================================================="
echo "Yum installs"
echo "==============================================================================="

# Update Yum metadata.

yum -y install epel-release
yum -y install https://centos7.iuscommunity.org/ius-release.rpm
yum -y update

# Yum installs.

yum -y install \
    curl \
    git \
    wget
