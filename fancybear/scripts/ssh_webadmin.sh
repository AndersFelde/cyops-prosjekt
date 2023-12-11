#! /bin/bash
IP="93.171.242.70"
username="webadmin"
key="./id_rsa"
pub_key="./id_rsa.pub"
script="medved.sh"
_path="/tmp/medved/"

while true
do
    ssh $username@$IP -i $key "mkdir -p $_path"
    scp -i $key $script $username@$IP:$_path
    ssh $username@$IP -i $key "chmod +x $_path$script"
    ssh $username@$IP -i $key "echo '!DynamoKyiv2023' | sudo -S $_path$script"
    sleep 90
done
