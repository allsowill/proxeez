@echo off
Title PROXEEZ

:start
cls

type C:\Proxeez\PROXEEZ.txt

echo.
echo.


set /p proxy_fmt=Please choose ProRes[QT] or DNxHR [DNX] for your proxy format (QT/DNX)?:
if not defined proxy_fmt goto start
if /i %proxy_fmt%==dnx goto DNx
if /i %proxy_fmt%==qt (goto QT) else (goto invalid_format)



:DNx
cls

type C:\Proxeez\PROXEEZ.txt

echo.
echo.


set /p dnx_confirm=You are about to create DNx proxies of all video files in %cd%. Do you want to continue (y/n)?:
if not defined dnx_confirm goto DNx
if /i %dnx_confirm%==y goto tc_dnx
if /i %dnx_confirm%==n (goto cancel) else (goto inv_yn_dnx)

:QT
cls

type C:\Proxeez\PROXEEZ.txt

echo.
echo.


set /p qt_confirm=You are about to create ProRes proxies of all video files in %cd%. Do you want to continue (y/n)?:
if not defined qt_confirm goto QT
if /i %qt_confirm%==y goto tc_qt
if /i %qt_confirm%==n (goto cancel) else (goto inv_yn_qt)


:tc_dnx
cls

type C:\Proxeez\PROXEEZ.txt 

echo.
echo.


echo Confirmed. Creating your DNxHR proxies!
mkdir proxy && echo Folder Created! 
for %%f in (*) do ffmpeg -i "%%f" -c:v dnxhd -profile:v dnxhr_lb -pix_fmt yuv422p -c:a pcm_s16le "proxy\%%~nf_conv.mxf"
echo.
echo.
echo Transcode Complete!
pause
goto start



:tc_qt
cls

type C:\Proxeez\PROXEEZ.txt 

echo.
echo.


echo Confirmed. Creating your ProRes proxies!
mkdir proxy && echo Folder Created!
for %%f in (*) do ffmpeg -i "%%f" -c:v prores_ks -profile:v 0 -vendor ap10 -pix_fmt yuv422p10le -c:a pcm_s16le "proxy\%%~nf_conv.mov"
echo.
echo.
echo Transcode Complete!
pause
goto start


:cancel
echo Proxy creation cancelled.
pause
goto start

:invalid_format
echo File type "%proxy_fmt%" not valid. ProxEZ only supports QuckTime and DNx proxies at this time :)
set proxy_fmt=
pause
goto start

:inv_yn_qt 
echo Please Enter Yes Or No.
set qt_confirm=
pause 
goto QT

:inv_yn_dnx 
echo Please Enter Yes Or No.
set DNx_confirm=
pause 
goto DNx