#!/bin/bash

# Install system dependencies
sudo apt-get install -y build-essential wget git python3-dev \
                        libpq-dev libxml2-dev libxslt1-dev zlib1g-dev \
                        libsasl2-dev libldap2-dev libffi-dev libssl-dev \
                        libjpeg-dev libblas-dev libatlas-base-dev libreadline-dev

# Install WKHTMLTOPDF for PDF reports
sudo apt-get install -y wkhtmltopdf

echo "Dependencies installed."
