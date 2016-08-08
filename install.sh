#!/bin/sh

# CREATE MAIN DIRECTORY
sudo mkdir /var/Pidena
# MAKE OWNER pi
sudo chown pi /var/Pidena

# COPY FILES FROM LOCAL DIRECTORY
sudo cp -r . /var/Pidena/


# CREATE FOLDERS WHICH ARE NOT PART OF THE GIT
sudo mkdir /var/Pidena/errors && sudo chown pi /var/Pidena/errors
sudo mkdir /var/Pidena/xmlCreation && sudo chown pi /var/Pidena/xmlCreation


sudo apt-get update
sudo apt-get install -y nmap # FOR SCANNING NETWORK
sudo apt-get install -y mcrypt # FOR SECURITY
sudo apt-get install -y sshpass # FOR EASIER SSH WORK

sudo apt-get install -y php5 php5-mcrypt php5-curl libapache2-mod-php5 # PHP5 

# ADD APACHE LINK SOMEHOW TO /etc/apache2/sites-available/000-default.conf
# DocumentRoot /var/Pidena/www