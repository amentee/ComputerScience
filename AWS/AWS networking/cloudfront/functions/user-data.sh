#!/bin/bash
# Use this for your user data (script without newlines)
# Installs httpd (Linux 2 version)
yum update -y
yum install -y httpd.x86_64
systemctl start httpd
systemctl enable httpd
mkdir /var/www/html/{en,fr,de}
echo '<h1>Hello, this is the "English" version of the website :)</h1>' > /var/www/html/en/index.html
echo '<h1>Bonjour, je suis la version française de ce site! :)</h1>' > /var/www/html/fr/index.html
echo '<h1>Hallo, dies ist die "Deutsche" Version der Website :)</h1>' > /var/www/html/de/index.html