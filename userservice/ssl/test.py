#!/usr/bin/env python

import requests
s = requests.Session()
s.cert = './cacert.pem'

print("-------------- trying 8444 ------------------")
try:
    print(requests.get('https://localhost:8444', verify=False).content)
    #print(requests.get('https://kongadmin:8444').content)
except requests.exceptions.SSLError:
    print('------------- failed 8444 -----------')

print()

print("-------------- trying 8443 ------------------")
try:
    print(requests.get('https://localhost:8443/cats/ip', verify=False).content)
    #print(requests.get('https://kong:8443/cats/ip').content)
except requests.exceptions.SSLError:
    print('------- failed 8443 ---')
