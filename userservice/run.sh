#!/bin/bash
# export PATH="$(brew --prefix openssl)/bin:$PATH"
# mkdir ./ssl
# openssl s_client -showcerts -connect localhost:8444 </dev/null 2>/dev/null|openssl x509 -outform PEM >ssl/kong.pem
# c_rehash ssl
# export REQUESTS_CA_BUNDLE="$PWD/ssl"
# 

python3 manage.py runserver 0.0.0.0:9000
