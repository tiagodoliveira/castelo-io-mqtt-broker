#!/bin/sh

# Create necessary directories
mkdir -p /mosquitto/config /mosquitto/data /mosquitto/log

# Create the Mosquitto configuration file with proper formatting
cat > /mosquitto/config/mosquitto.conf <<EOF
listener 1883
allow_anonymous true
EOF

# Start the Mosquitto service
exec /usr/sbin/mosquitto -c /mosquitto/config/mosquitto.conf