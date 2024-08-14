#!/bin/bash

# Install PostgreSQL
sudo apt-get install -y postgresql postgresql-server-dev-all

# Create Odoo PostgreSQL user and database
sudo -u postgres createuser -s odoo_user
sudo -u postgres createdb -O odoo_user odoo_db

echo "PostgreSQL configured for Odoo."