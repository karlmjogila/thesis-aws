#!/bin/bash

# Deploy VPC
ansible-playbook vpc.yml

# Deploy bastion host
# ansible-playbook bastion.yml