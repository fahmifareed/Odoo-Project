# Odoo Automation Scripts

This project provides automation scripts for installing and configuring Odoo, including integration with ZATCA's e-invoicing system.

## Scripts

1. **install_odoo.sh**: Installs Odoo from the official repository.
2. **configure_postgres.sh**: Sets up PostgreSQL for Odoo.
3. **install_dependencies.sh**: Installs system dependencies and tools.
4. **configure_odoo.sh**: Configures Odoo and sets up the service.
5. **setup_zatca_module.sh**: Installs the ZATCA integration module.
6. **backup_odoo.sh**: Automates the backup of Odoo databases and files.

## Usage

1. Clone the repository:
    ```bash
    git clone https://github.com/your-repo/odoo-automation.git
    cd odoo-automation
    ```

2. Run the scripts in order:
    ```bash
    bash install_odoo.sh
    bash configure_postgres.sh
    bash install_dependencies.sh
    bash configure_odoo.sh
    bash setup_zatca_module.sh
    ```

3. For backups, use:
    ```bash
    bash backup_odoo.sh
    ```

## License
This project is licensed under the MIT License.
