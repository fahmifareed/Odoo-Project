#!/bin/bash

# Variables
ODOO_USER="odoo"
ODOO_HOME="/opt/odoo"
ODOO_VERSION="16.0"
ODOO_REPO="https://github.com/odoo/odoo.git"

# Create Odoo user
sudo adduser --system --home=$ODOO_HOME --group $ODOO_USER

# Clone Odoo repository
sudo git clone $ODOO_REPO $ODOO_HOME
cd $ODOO_HOME || exit
sudo git checkout $ODOO_VERSION

# Install Python dependencies
sudo apt-get update -y && sudo apt-get upgrade -y
sudo apt-get install -y python3-pip
sudo pip3 install -r requirements.txt

echo "Odoo installation completed."
