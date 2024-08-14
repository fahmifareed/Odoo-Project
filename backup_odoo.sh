#!/bin/bash

# Variables
BACKUP_DIR="/var/backups/odoo"
ODOO_USER="odoo"
ODOO_DB="odoo_db"
TIMESTAMP=$(date +'%Y%m%d%H%M%S')

# Create backup directory if it doesn't exist
sudo mkdir -p $BACKUP_DIR

# Backup database
sudo -u postgres pg_dump $ODOO_DB | gzip > $BACKUP_DIR/${ODOO_DB}_$TIMESTAMP.sql.gz

# Backup Odoo files
sudo tar -czf $BACKUP_DIR/odoo_files_$TIMESTAMP.tar.gz /opt/odoo

echo "Odoo backup completed."
