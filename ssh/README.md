# SSH Configuration Projects

This repository contains a set of Bash and Puppet scripts to configure SSH settings for connecting to a remote server securely. The projects aim to automate the process of setting up SSH keys and client configurations to enhance security and ease of access.

## Project 0: Use a Private Key

### Description

The Bash script `0-use_a_private_key.sh` allows you to connect to your server using the private key `~/.ssh/school` with the `ubuntu` user. It enforces the use of single-character flags for `ssh`, ensuring a secure and efficient connection.

### Usage

```bash
./0-use_a_private_key.sh
```


## Project 1: Create an SSH Key Pair

### Description

The Bash script `1-create_ssh_key_pair.sh` generates an RSA key pair with 4096 bits and names the private key as school. The private key is protected with the passphrase betty. The generated public and private keys are saved in separate files.

### Usage

```bash
./1-create_ssh_key_pair.sh
```


## Project 2: Client Configuration File

### Descrption

The Bash script `2-client_configuration.sh` helps configure the SSH client to use the private key `~/.ssh/school` for authentication and refuses password-based authentication. This enhances security by promoting key-based authentication.

### Usage

```bash
./2-client_configuration.sh
```


## Project 3: Client Configuration File (w/ Puppet)

### Description

The Puppet manifest `100-puppet_ssh_config.pp` automates the configuration of the SSH client using Puppet. It sets up the client to use the private key `~/.ssh/school` and refuse password-based authentication. Puppet provides a scalable and repeatable approach to manage SSH configurations.

### Usage

```bash
sudo puppet apply 100-puppet_ssh_config.pp
```


## Author

Done by [Maxime Bakunzi](https://github.com/Maxime-Bakunzi)

