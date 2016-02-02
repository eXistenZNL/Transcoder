#!/bin/sh

echo "Updating...\n"
apt-get update > /dev/null
echo "Installing libav-tools...\n"
apt-get install libav-tools -y > /dev/null
echo "Cleaning up...\n"
apt-get autoremove -y > /dev/null
