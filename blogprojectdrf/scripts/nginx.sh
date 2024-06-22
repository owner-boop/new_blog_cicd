
#!/usr/bin/bash

sudo systemctl daemon-reload
sudo rm -f /etc/nginx/sites-enabled/default

sudo cp /home/ubuntu/blogprojectdrf/nginx/nginx.conf /etc/nginx/sites-available/blog
sudo ln -s /etc/nginx/sites-available/blog /etc/nginx/sites-enabled/
#sudo ln -s /etc/nginx/sites-available/blog /etc/nginx/sites-enabled
#sudo nginx -t
sudo fuser -k 80/tcp
sudo fuser -k 443/tcp
netstat -tnlp | grep -w 80
netstat -ano|grep 80|grep LISTEN
sudo netstat -lnp
sudo lsof -i :80
netstat -tulpn
grep -rnw /etc/nginx/ -e '80'

sudo gpasswd -a www-data ubuntu
sudo systemctl restart nginx

