@echo off
title ����Windows����
:: Author donnymoving@gmail.com
:: ����Windows����
echo ����Ҫ���õķ�������:
set /p service_name=
echo Ҫ���õķ���������:%service_name%
echo ����Windowsע���༭��......
sc config "%service_name%" start= disabled
echo �������
pause