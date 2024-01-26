# IAC_DevOps_Project
-

## Roles
- [x] Hardening
- [x] Docker
- [x] Registry
- [x] WordPress
- [x] NGINX
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

