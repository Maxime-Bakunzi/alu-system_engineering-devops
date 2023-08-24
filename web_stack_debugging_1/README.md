
# Web Stack Debugging 1

This repository contains a Bash script for configuring Nginx to listen on port 80 of all active IPv4 IPs in an Ubuntu container.

## Requirements

- Ubuntu container environment
- Bash shell

## Usage

1. Clone this repository to your Ubuntu container:

   ```bash
   git clone https://github.com/your-username/web_stack_debugging_1.git
   ```

2. Navigate to the cloned directory:

   ```bash
   cd nginx-port-80-config
   ```

3. Make the script executable:

   ```bash
   chmod +x configure_nginx.sh
   ```

4. Run the script with root privileges to configure Nginx:

   ```bash
   sudo ./configure_nginx.sh
   ```

5. Verify that Nginx is running and listening on port 80:

   ```bash
   curl 0:80
   ```

   You should receive a response indicating that Nginx is successfully installed and working.

## Script Details

The Bash script (`configure_nginx.sh`) performs the following steps:

1. Updates package information.
2. Installs Nginx.
3. Stops the Nginx service.
4. Configures Nginx to listen on port 80 for all active IPv4 IPs.
5. Starts the Nginx service.

## Note

If you encounter any issues or have further questions, feel free to reach out.


Replace `"your-username"` with your actual GitHub username in the cloning step, and adjust any other placeholders as needed. This `README.md` provides an overview of the project, instructions for usage, script details, and licensing information.
