#!/bin/bash
set -e

echo "=== Ensuring nginx is installed and enabled ==="

which nginx || (dnf install -y nginx || yum install -y nginx)
systemctl enable nginx

echo "=== Cleaning up old files in /usr/share/nginx/html/ ==="
rm -rf /usr/share/nginx/html/*

echo "=== Cleanup complete ==="
