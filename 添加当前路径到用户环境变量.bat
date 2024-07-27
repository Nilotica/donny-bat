@echo off
title 添加当前路径到用户环境变量
:: Author donnymoving@gmail.com
:: 在Path中添加当前路径到用户环境变量，也可以自行改成其他路径
:: UserName=DOMAIN\\USERNAME，域加计算机名称组成，请自行修改为自己计算机的域和计算机名
:: 如果不清楚自己计算机的域和计算机名，可在cmd中输入wmic ENVIRONMENT即可在输出信息中找到
echo=
wmic ENVIRONMENT where "Name='Path' AND UserName='DONNY\\Donny'" set VariableValue="%path%;%~dp0"
echo 添加的路径是：%path%
echo 打印添加完的用户环境变量：
wmic ENVIRONMENT where "Name='Path' AND UserName='DONNY\\Donny'" get VariableValue
echo 结束
pause