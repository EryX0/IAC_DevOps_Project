# IAC_DevOps_Project
Ansible Project to Harden, Install Docker and private registry, Deploy WordPress, NginX reverse proxy and also a backup script to backup important data periodically.  

## Roles
- [x] Hardening
- [x] Docker
- [x] Registry
- [x] WordPress
- [x] NGINX
- [x] Backup

## Requirements
```
Python 3.8 and up
Ansible 2.10.0 and up
```

## Setup and dependencies
installing ansible module dependencies
```
ansible-galaxy install -r requirements.yml
```

## Run
Add ssh config host name to `myhosts` and change ```ssh_key_path = YOUR_PATH``` in ansible.cfg to connect to the remote servers.
```
ansible-playbook -i myhosts -K playbook.yml
```

## Location of important directories on the server

main dir: ```~/ansible_agent```

Backup dir: ```~/ansible_agent/backup/daily```
