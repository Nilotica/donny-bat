@echo off
title ��ӵ�ǰ·�����û���������
:: Author donnymoving@gmail.com
:: ��Path����ӵ�ǰ·�����û�����������Ҳ�������иĳ�����·��
:: UserName=DOMAIN\\USERNAME����Ӽ����������ɣ��������޸�Ϊ�Լ����������ͼ������
:: ���������Լ����������ͼ������������cmd������wmic ENVIRONMENT�����������Ϣ���ҵ�
echo=
wmic ENVIRONMENT where "Name='Path' AND UserName='DONNY\\Donny'" set VariableValue="%path%;%~dp0"
echo ��ӵ�·���ǣ�%path%
echo ��ӡ�������û�����������
wmic ENVIRONMENT where "Name='Path' AND UserName='DONNY\\Donny'" get VariableValue
echo ����
pause