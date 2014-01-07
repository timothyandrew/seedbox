sudo apt-get -y install python-software-properties vim
sudo add-apt-repository -y ppa:transmissionbt/ppa
sudo apt-get -y update
sudo apt-get -y install transmission-cli transmission-common transmission-daemon nginx
sudo cp /tmp/seedbox/transmission-settings.json /etc/transmission-daemon/settings.json
sudo cp /tmp/seedbox/nginx.conf /etc/nginx/nginx.conf
sudo chmod 777 /usr/share/nginx/www 
sudo rm /usr/share/nginx/www/index.html
sudo /etc/init.d/transmission-daemon reload
sudo /etc/init.d/nginx restart
