We want to make sure that Apache Configuration loads the module mod_remoteip, which includes the RemoteIPProxyProtocol directive

Verify the module mod_remoteip loaded successfully

`sudo apachectl -t -D DUMP_MODULES | grep -i remoteip`

You'll have the following output
> remoteip_module (shared)

edit the file
`sudo nano /etc/httpd/conf/httpd.conf`

Add this line to enable Proxy Protocol

`RemoteIPProxyProtocol On`

Reload Apache

`sudo systemctl reload httpd`

Run the following command to watch your Apache Access Logs

`sudo tail -f /var/log/httpd/access_log`