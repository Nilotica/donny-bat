@echo off
title �޸��ƶ�Ӳ�̳���
:: Author donnymoving@gmail.com
echo=
echo ����Ҫ�޸����ƶ�Ӳ���̷�(���磺E:):
set /p input=
echo ��ʼ�޸��ƶ�Ӳ��
chkdsk %input%/f
echo=
echo �����޸�
pause>nul&&exit