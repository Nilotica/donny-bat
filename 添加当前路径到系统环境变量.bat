@echo off
title ��ӵ�ǰ·����ϵͳ��������
:: Author donnymoving@gmail.com
:: ��Path����ӵ�ǰ·����ϵͳ����������Ҳ�������иĳ�����·��
:: UserName=SYSTEM��ϵͳ���������û���һ����SYSTEM
echo=
wmic ENVIRONMENT where "name='Path' AND UserName='<SYSTEM>'" set VariableValue="%path%;%~dp0"
echo ��ӵ�·���ǣ�%path%
echo ��ӡ������ϵͳ����������
wmic ENVIRONMENT where "Name='Path' AND UserName='<SYSTEM>'" get VariableValue
echo ����
pause