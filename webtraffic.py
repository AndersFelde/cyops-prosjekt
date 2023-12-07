import os
from time import sleep

import requests

IP = "10.0.1."
WEB = "http://10.0.1.7"
INTERFACE = "Ethernet0"
SUBNET = "255.255.255.0"
GW = "10.0.1.4"

while True:
    for i in range(100, 200):
        ip = IP + str(i)
        os.system(
            f'netsh interface ipv4 set address name="{INTERFACE}" static {ip} {SUBNET} {GW}'
        )
        sleep(20)
        requests.get(WEB)
