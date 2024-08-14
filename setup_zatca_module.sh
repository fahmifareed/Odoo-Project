#!/bin/bash

# Clone the ZATCA integration module
cd /opt/odoo/addons
sudo git clone https://github.com/your-repo/zatca_integration.git

# Set permissions
sudo chown -R odoo: /opt/odoo

# Restart Odoo service
sudo systemctl restart odoo

echo "ZATCA integration module installed and configured."
