#!/usr/bin/env bash

# Script to create an RSA key pair

# Using ssh-keygen command to generate the RSA key pair
ssh-keygen -t rsa -b 4096 -f school -N betty

# Displaying the message once the key pair is generated
echo "Generating public/private rsa key pair."
echo "Your identification has been saved in school."
echo "Your public key has been saved in school.pub."

