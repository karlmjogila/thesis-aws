#!/bin/bash

# Create keys file
ansible-vault create keys

# Deploy VPC
ansible-playbook vpc.yml