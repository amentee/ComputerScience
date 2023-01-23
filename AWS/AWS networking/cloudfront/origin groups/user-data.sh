#!/bin/bash
# Use this for your user data (script without newlines)
# Installs httpd (Linux 2 version)
yum update -y
yum install -y httpd.x86_64
systemctl start httpd
systemctl enable httpd
echo "<h1>Hello, this index.html page from $(hostname -f)</h1>" > /var/www/html/index.html
echo "<h1>Hello, this index2.html page from $(hostname -f)</h1>" > /var/www/html/index2.html