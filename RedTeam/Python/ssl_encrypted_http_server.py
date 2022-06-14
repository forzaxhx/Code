#!/usr/bin/python

# Author: ForzaxHX
# This tool is a SimpleHTTP server with encrypted connections via SSL

# Create SSL cert (follow the following)
# > openssl req -new -x509 -keyout cert.pem -out cert.pem -days 365 -nodes

# Create SimpleHTTP server
import BaseHTTPServer,SimpleHTTPServer,ssl

cert= input("Introduzca el nombre o ruta completa de su certificado SSL: ")

ip = input("¿En que IP desea establecer el servidor HTTP serguro?: ")
port = input("¿En que puerto?: ")

try: 
    httpd = BaseHTTPServer.HTTPServer((ip,port),SimpleHTTPServer.SimpleHTTPRequestHandler)
    httpd.socket = ssl.wrap_socket(httpd.socket,certfile=cert,server_side=True)
    httpd.serve_forever()
    print("Servidor HTTP Encriptado establecido correctamente.")
except:
    print("Error: Revise los parametros introducidos.")