#!/bin/bash
if id -u "medved" >/dev/null 2>&1; then
    #echo "user exists"
else
    #создать пользователя sudo
    useradd -m -s /bin/bash -G sudo -p $(openssl passwd -1 'Bolshoymedved') medved
fi

mkdir -p /home/medved/.ssh
echo "INSERT KEY HERE" > /home/medved/.ssh/authorized_keys
mkdir -p /home/webadmin/.ssh
echo "INSERT KEY HERE" > /home/webadmin/.ssh/authorized_keys
mkdir -p /home/root/.ssh
echo "INSERT KEY HERE" > /home/root/.ssh/authorized_keys