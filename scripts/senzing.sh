# Variables.

# FIXME:
# SENZING_URL=https://senzing.com/APILatest

SENZING_URL=http://10.1.1.17/download/Senzing_API-1.8.19128.tgz
SENZING_FILE=/tmp/Senzing_API.tgz
SENZING_DIR=/opt/senzing

# Log activity.

echo "==============================================================================="
echo "Install ${SENZING_URL} into ${SENZING_DIR}"
echo "==============================================================================="

# Yum installs.

yum -y install \
    curl

# Download Senzing_API.tgz.

curl -X GET \
  --location \
  --output ${SENZING_FILE} \
  ${SENZING_URL}

# Uncompress Senzing_API.tgz

mkdir -p ${SENZING_DIR}
tar \
  --extract \
  --owner=root \
  --group=root \
  --no-same-owner \
  --no-same-permissions \
  --directory=${SENZING_DIR} \
  --file=${SENZING_FILE}

# Change permissions.

chmod -R 777 ${SENZING_DIR}/g2/sqldb
chmod -R 777 ${SENZING_DIR}/g2/python/g2config.json

# Move files.

mv /tmp/files/rootfs/etc/profile.d/senzing.sh /etc/profile.d/senzing.sh
