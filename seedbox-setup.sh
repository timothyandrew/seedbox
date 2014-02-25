sudo apt-get -y install python-software-properties vim
sudo add-apt-repository -y ppa:transmissionbt/ppa
sudo apt-get -y update
sudo apt-get -y install transmission-cli transmission-common transmission-daemon nginx
sudo cp /tmp/seedbox/transmission-settings.json /etc/transmission-daemon/settings.json
sudo cp /tmp/seedbox/nginx.conf /etc/nginx/nginx.conf
sudo cp /tmp/seedbox/default /etc/nginx/sites-available/default
sudo chmod -R 777 /home
sudo /etc/init.d/transmission-daemon reload
sudo /etc/init.d/nginx restart
