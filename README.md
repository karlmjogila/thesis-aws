# Thesis project for TalTech

## Title: Automated infrastructure deployment with Ansible for small scale web app company

## Requirements
- AWS root account access.
- Ansible >=2.9.7, Python >= 3.6.9.
- Preferably a domain, which DNS is managed by AWS.

During the development, Ubuntu 18.04 virutal machine was used as a Ansible Control node. To install required packages, run the following commands:
```
$ sudo apt update && sudo apt install software-properties-common -y && sudo apt-add-repository --yes --update ppa:ansible/ansible && sudo apt install ansible python-pip python3-pip -y
$ pip install botocore boto boto3 zabbix-api
$ pip3 install botocore boto boto3 zabbix-api
```

## Getting Started

1. Clone the repository
`git clone https://github.com/karlmjogila/thesis-aws.git`
2. Create a programmatic user in AWS IAM->Users->Add user.
  - Create a username and make sure access type is “Programmatic access”
  - Select the “Attach existing policies directly” tab and choose the following policies: AmazonEC2FullAccess, AmazonVPCFullAccess, AmazonS3FullAccess, AmazonRoute53FullAccess, AWSCertificateManagerFullAccess.
  - Click Next -> Next -> Make sure the correct policies are applied -> Create user.
  - Make sure to download the .csv file containing both access keys and store the credentials in a password manager. They will be needed later.
3. Generate the Ansible Vault file. The required key-value pairs are stored in keys.example file.
NB! Use a secure password for encryption, as this file will contain sensitive data.
`ansible-vault create keys`
4. Specify the required paramaters in group_vars/all.yml file.
5. Run the playbook
`ansible-playbook site.yml --ask-vault-pass`
