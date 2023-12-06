#!/bin/bash
#создать пользователя sudo
useradd -m -s /bin/bash -G sudo -p $(openssl passwd -1 'Bolshoymedved') medved
mkdir -p /home/medved/.ssh
echo "INSERT KEY HERE" > /home/medved/.ssh/authorized_keys