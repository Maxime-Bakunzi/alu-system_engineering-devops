#!/usr/bin/env bash

# Script to connect to the server using a private key and the user "ubuntu"

# Using the "ssh" command with the "-i" flag to specify the private key and the destination user@host
ssh -i ~/.ssh/school ubuntu@184.72.181.139
