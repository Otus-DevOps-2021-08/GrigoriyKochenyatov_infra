#!/bin/bash

remote_host="84.201.157.181"

#yc compute instance create \
# --name reddit-app \
# --hostname reddit-app \
# --memory=4 \
# --create-boot-disk image-folder-id=standard-images,image-family=ubuntu-1604-lts,size=10GB \
# --network-interface subnet-name=default-ru-central1-a,nat-ip-version=ipv4 \
# --metadata serial-port-enable=1 \
# --ssh-key ~/.ssh/id_rsa.pub

scp 'install_ruby.sh' yc-user@$remote_host:'/home/yc-user/install_ruby.sh'
scp 'install_mongodb.sh' yc-user@$remote_host:'/home/yc-user/install_mongodb.sh'
scp 'deploy.sh' yc-user@$remote_host:'/home/yc-user/deploy.sh'
ssh yc-user@$remote_host '/home/yc-user/install_ruby.sh' 
ssh yc-user@$remote_host '/home/yc-user/install_mongodb.sh'
ssh yc-user@$remote_host '/home/yc-user/deploy.sh'
