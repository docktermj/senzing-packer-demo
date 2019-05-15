# Log activity.

echo "==============================================================================="
echo "Install RabbitMQ"
echo "==============================================================================="

# Yum installs.

yum -y install \
    rabbitmq-server

# Start service.

systemctl start rabbitmq-server.service
systemctl enable rabbitmq-server.service
