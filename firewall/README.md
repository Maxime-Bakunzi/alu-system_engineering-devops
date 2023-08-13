# Firewall Configuration Projects

This repository contains instructions and configurations for two firewall configuration projects using the Uncomplicated Firewall (ufw) tool. These projects involve setting up a firewall to control incoming traffic and implementing port forwarding.

## Project 1: Block All Incoming Traffic Except Specific Ports

### Requirements

- Configure the ufw firewall on `web-01` to block all incoming traffic, except the following TCP ports:
  - Port 22 (SSH)
  - Port 443 (HTTPS SSL)
  - Port 80 (HTTP)

### Instructions

1. Install ufw (if not already installed):
   ```bash
   sudo apt-get install ufw
```

2. Configure ufw rules:
   ```bash
   sudo ufw disable
   sudo ufw default deny incoming
   sudo ufw allow 22/tcp
   sudo ufw allow 443/tcp
   sudo ufw allow 80/tcp
   sudo ufw enable
   ```

3. Verify ufw status:
   ```bash
   sudo ufw status
   ```

## Project 2: Port Forwarding

### Requirements

- Configure `web-01` to forward incoming traffic from port 8080/TCP to port 80/TCP.

### Instructions

1. Update ufw configuration:
   - Edit `/etc/ufw/before.rules` and add the following lines before the `*filter` section:
     ```plaintext
     *nat
     :PREROUTING ACCEPT [0:0]
     -A PREROUTING -p tcp --dport 8080 -j REDIRECT --to-port 80
     COMMIT
     ```
   - Save the file.

2. Restart ufw:
   ```bash
   sudo ufw disable
   sudo ufw enable
   ```

3. Test port forwarding:
   - Verify that requests to both port 80 and port 8080 are redirected to the server.

---

