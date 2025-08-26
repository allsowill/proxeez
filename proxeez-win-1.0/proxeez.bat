@echo off

:top
cls

if [%1] equ [help] (type C:\Proxeez\proxeezhelp.txt) else (start C:\Proxeez\proxeez-v1.bat)

pause

cls