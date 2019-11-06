#!/bin/bash
sed "s/{dnsname}/$1/" "./opensslconftemplate.txt" > "./openssl-san.cnf"
openssl req -newkey rsa:2048 -nodes -sha256 -keyout "./$1.key" -out "./$1.csr" -config ./openssl-san.cnf
