# export PATH="/usr/local/Cellar/openssl@1.1/1.1.0g/bin:$PATH"
# mkdir ./ssl
# openssl s_client -showcerts -connect localhost:8444 </dev/null 2>/dev/null|openssl x509 -outform PEM >ssl/kong.pem
# c_rehash ssl
# export REQUESTS_CA_BUNDLE="$PWD/ssl"
# 

PYTHONHTTPSVERIFY=0 python3 manage.py runserver 9000