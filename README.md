# IAC_DevOps_Project
-

## Roles
- [x] Docker
- [x] Hardening
- [x] Registry
- [x] NGINX
- [x] WordPress
- [x] Backup

## Setup
```
ansible-galaxy install -r requirements.yml
```

## Run
Add ssh config host name to `myhosts`
```
ansible-playbook -i myhosts -K playbook.yml
```

## Registry
push and pull images :
```
docker login 127.0.0.1:5000
docker tag mysql:5.8 127.0.0.1:5000/mysql:5.8
docker push mysql:5.8 127.0.0.1:5000/mysql:5.8
```
