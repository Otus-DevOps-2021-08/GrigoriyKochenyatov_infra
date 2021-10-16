#!/bin/bash
echo "deb https://repo.mongodb.org/apt/ubuntu bionic/mongodb-org/4.2 multiverse"
 > /etc/apt/sources.list.d/mongodb-org-4.2.list
echo "deb http://repo.pritunl.com/stable/apt bionic main" > /etc/apt/sources.lis
t.d/pritunl.list
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com --recv E162F504A20CDF158
27F718D4B7C549A058F8B6B
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com --recv 7568D9BB55FF9E52
87D586017AE645C0CF8E292A
sudo apt-get update
sudo apt-get --assume-yes install pritunl mongodb-server
sudo systemctl start pritunl mongodb
sudo systemctl enable pritunl mongodb
