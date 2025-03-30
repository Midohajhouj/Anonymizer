#!/bin/bash

# Check for root
if [ "$(id -u)" -ne 0 ]; then
    echo "This script must be run as root" >&2
    exit 1
fi

# Install dependencies
echo "Installing dependencies..."
apt-get update
apt-get install -y tor iptables iproute2 curl openssl systemd

# Optional dependencies
apt-get install -y openvpn obfs4proxy dnscrypt-proxy gpg bleachbit

# Copy files
echo "Installing AnonymizerPro..."
cp anonymizer.sh /usr/local/bin/anonymizer
chmod +x /usr/local/bin/anonymizer

# Create config directory
mkdir -p /etc/anonymizer
chmod 700 /etc/anonymizer

# Generate default config
if [ ! -f /etc/anonymizer/anonymizer.conf ]; then
    /usr/local/bin/anonymizer start >/dev/null 2>&1
    /usr/local/bin/anonymizer stop >/dev/null 2>&1
fi

# Create log directory
mkdir -p /var/log/anonymizer
chmod 700 /var/log/anonymizer

# Create state directory
mkdir -p /var/run/anonymizer
chmod 700 /var/run/anonymizer

echo "Installation complete!"
echo "Usage:"
echo "  sudo anonymizer start   # Start protection"
echo "  sudo anonymizer menu    # Interactive menu"
