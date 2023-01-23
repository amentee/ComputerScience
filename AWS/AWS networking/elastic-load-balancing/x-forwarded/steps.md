Edit the file /etc/httpd/conf/httpd.conf, edit the LogFormat section with the following
a
`LogFormat "%{X-Forwarded-For}i %{X-Forwarded-Proto}i %{X-Forwarded-Port}i ...`

Reload Apache

`sudo systemctl reload httpd`

Run the following command to watch your Apache Access Logs

`sudo tail -f /var/log/httpd/access_log`