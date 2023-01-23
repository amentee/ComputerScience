#!/bin/bash
# Use this for your user data (script without newlines)
# Installs httpd (Linux 2 version)
yum update -y
yum install -y httpd.x86_64
systemctl start httpd
systemctl enable httpd
echo "Hello World from $(hostname -f)" > /var/www/html/index.html