@echo off
title 禁用Windows服务
:: Author donnymoving@gmail.com
:: 禁用Windows服务
echo 设置要禁用的服务名称:
set /p service_name=
echo 要禁用的服务名称是:%service_name%
echo 启动Windows注册表编辑器......
sc config "%service_name%" start= disabled
echo 设置完成
pause