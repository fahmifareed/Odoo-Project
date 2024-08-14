#!/bin/bash

# Variables
ODOO_CONFIG="/etc/odoo/odoo.conf"

# Create configuration directory
sudo mkdir /etc/odoo

# Create Odoo configuration file
sudo tee $ODOO_CONFIG <<EOF
[options]
admin_passwd = admin
db_host = False
db_port = False
db_user = odoo_user
db_password = False
addons_path = /opt/odoo/addons,/opt/odoo/odoo/addons
logfile = /var/log/odoo/odoo.log
EOF

# Create systemd service file for Odoo
sudo tee /etc/systemd/system/odoo.service <<EOF
[Unit]
Description=Odoo
Documentation=http://www.odoo.com
[Service]
Type=simple
User=odoo
ExecStart=/opt/odoo/odoo-bin -c /etc/odoo/odoo.conf
KillMode=mixed
[Install]
WantedBy=multi-user.target
EOF

# Reload systemd and enable Odoo service
sudo systemctl daemon-reload
sudo systemctl enable odoo
sudo systemctl start odoo

echo "Odoo configured and service started."
