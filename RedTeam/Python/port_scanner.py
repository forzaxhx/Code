#!/usr/bin/python

# Author: ForzaxHX
# Python port scanner

import socket as sk

ip = input("Introduzca la IP la cual desea escanear: ")

for port in range(1,65535):
    try:
        s=sk.socket(sk.AF_INET, sk.SOCK_STREAM)
        s.settimeout(100)
        s.connect((ip, port))
        print (str(port)+": OPENED")
        s.close
    except: 
        print (str(port)+": CLOSED")
        continue
