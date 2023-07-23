#!/usr/bin/env bash

# Script to create an RSA key pair

# Using ssh-keygen command to generate the RSA key pair
ssh-keygen -f school -N betty -t rsa -b 4096
