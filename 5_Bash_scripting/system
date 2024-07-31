#!/bin/bash

# Check if script is run as root
if [ "$(id -u)" -ne 0 ]; then
  echo "This script must be run as root" 
  exit 1
fi

# Update package index

echo "Updating package index..."
apt update

# Upgrade installed packages

echo "Upgrading installed packages..."
apt upgrade -y

echo "System update and upgrade complete."
