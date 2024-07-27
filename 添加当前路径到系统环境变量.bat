@echo off
title 添加当前路径到系统环境变量
:: Author donnymoving@gmail.com
:: 在Path中添加当前路径到系统环境变量，也可以自行改成其他路径
:: UserName=SYSTEM，系统环境变量用户名一般是SYSTEM
echo=
wmic ENVIRONMENT where "name='Path' AND UserName='<SYSTEM>'" set VariableValue="%path%;%~dp0"
echo 添加的路径是：%path%
echo 打印添加完的系统环境变量：
wmic ENVIRONMENT where "Name='Path' AND UserName='<SYSTEM>'" get VariableValue
echo 结束
pause