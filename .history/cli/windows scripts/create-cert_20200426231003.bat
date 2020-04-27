@echo off
SET CERTS=..\..\certs
del /Q/S %CERTS%
md %CERTS%
openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout %CERTS%\vergnano.local.key -out %CERTS%\vergnano.local.crt -config vergnano.local.conf
 %CERTS%