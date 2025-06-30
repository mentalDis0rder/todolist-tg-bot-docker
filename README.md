I didn't create this bot, I just added a Dockerfile to it so that it could be easily assembled and run in a container.

In order for it to work, you need to open ports on your server (if a firewall is installed)
5432

This can be done via ufw 
ufw allow 5432
systemctl restart
