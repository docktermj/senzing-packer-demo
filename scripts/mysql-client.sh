# Log activity.

echo "==============================================================================="
echo "Install mysql client"
echo "==============================================================================="

# Yum installs.

yum -y install \
    mysql-connector-odbc \
    wget

# Work-around https://senzing.zendesk.com/hc/en-us/articles/360009212393-MySQL-V8-0-ODBC-client-alongside-V5-x-Server

TARGET_FILE=/opt/senzing/g2/lib/libmysqlclient.so.21
mkdir -p /opt/senzing/g2/lib/

wget https://dev.mysql.com/get/Downloads/MySQL-8.0/mysql-community-libs-8.0.12-1.el7.x86_64.rpm
rpm2cpio mysql-community-libs-8.0.12-1.el7.x86_64.rpm | cpio -idmv

if [ ! -f ${TARGET_FILE} ]; then
  if [ -f /usr/lib64/mysql/libmysqlclient.so.21 ]; then
    cp /usr/lib64/mysql/libmysqlclient.so.21 ${TARGET_FILE}
  elif [ -f ./usr/lib64/mysql/libmysqlclient.so.21 ]; then
    cp ./usr/lib64/mysql/libmysqlclient.so.21 ${TARGET_FILE}
  fi
fi
