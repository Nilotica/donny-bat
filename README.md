# 一些有用的批处理文件和CMD命令

## 简介

本仓库收集了一些自己在日常中使用的批处理文件和CMD命令，方便大家使用。

## 目录

- [删除所有文件1.bat](https://github.com/Nilotica/donny-bat/blob/master/%E5%88%A0%E9%99%A4%E6%89%80%E6%9C%89%E6%96%87%E4%BB%B61.bat)
  #### 批量删除目标文件夹下所有子文件夹及文件，此种方式会先删除子文件夹和文件，谨慎操作。
- [删除所有文件2.bat](https://github.com/Nilotica/donny-bat/blob/master/%E5%88%A0%E9%99%A4%E6%89%80%E6%9C%89%E6%96%87%E4%BB%B62.bat)
  #### 批量删除目标文件夹下所有子文件夹及文件，此种方式直接删除目标文件夹，谨慎操作。
- [启动事件查看器.bat](https://github.com/mdd1991/mdd-bat/blob/master/%E5%90%AF%E5%8A%A8%E4%BA%8B%E4%BB%B6%E6%9F%A5%E7%9C%8B%E5%99%A8.bat)
  #### 事件查看器是Windows系统中用于检查和分析电脑问题的工具，直接打开事件查看器。
- [启动内存诊断.bat](https://github.com/mdd1991/mdd-bat/blob/master/%E5%90%AF%E5%8A%A8%E5%86%85%E5%AD%98%E8%AF%8A%E6%96%AD.bat)
  #### 直接打开Windows内存诊断。
- [启动服务管理器.bat](https://github.com/mdd1991/mdd-bat/blob/master/%E5%90%AF%E5%8A%A8%E6%9C%8D%E5%8A%A1%E7%AE%A1%E7%90%86%E5%99%A8.bat)
  #### 直接打开Windows服务管理工具。
- [启动注册表编辑器.bat](https://github.com/mdd1991/mdd-bat/blob/master/%E5%90%AF%E5%8A%A8%E6%B3%A8%E5%86%8C%E8%A1%A8%E7%BC%96%E8%BE%91%E5%99%A8.bat)
  #### 直接打开Windows注册表编辑器。
- [启动资源管理器.bat](https://github.com/mdd1991/mdd-bat/blob/master/%E5%90%AF%E5%8A%A8%E8%B5%84%E6%BA%90%E7%AE%A1%E7%90%86%E5%99%A8.bat)
  #### 直接打开Windows资源管理器。
- [批量下载文件.bat](https://github.com/mdd1991/mdd-bat/blob/master/%E6%89%B9%E9%87%8F%E4%B8%8B%E8%BD%BD%E6%96%87%E4%BB%B6.bat)
  #### 根据 download.txt 中的下载链接批量下载文件，下载之前确保电脑中已配置wget环境变量。
- [批量去掉文件名中的字符串.bat](https://github.com/mdd1991/mdd-bat/blob/master/%E6%89%B9%E9%87%8F%E5%8E%BB%E6%8E%89%E6%96%87%E4%BB%B6%E5%90%8D%E4%B8%AD%E7%9A%84%E5%AD%97%E7%AC%A6%E4%B8%B2.bat)
  #### 批量修改/去掉文件(夹)名中的字符串，可批量修改文件或文件夹名称。
- [禁用Windows服务.bat](https://github.com/mdd1991/mdd-bat/blob/master/%E7%A6%81%E7%94%A8Windows%E6%9C%8D%E5%8A%A1.bat)
  #### 禁用指定的Windows服务。
- [移动设备monkey测试测试应用.bat](https://github.com/mdd1991/mdd-bat/blob/master/%E7%A7%BB%E5%8A%A8%E8%AE%BE%E5%A4%87monkey%E6%B5%8B%E8%AF%95%E6%B5%8B%E8%AF%95%E5%BA%94%E7%94%A8.bat)
  #### 对手机/平板app进行monkey测试。
- [移动设备批量卸载第三方应用.bat](https://github.com/mdd1991/mdd-bat/blob/master/%E7%A7%BB%E5%8A%A8%E8%AE%BE%E5%A4%87%E6%89%B9%E9%87%8F%E5%8D%B8%E8%BD%BD%E7%AC%AC%E4%B8%89%E6%96%B9%E5%BA%94%E7%94%A8.bat)
  #### 手机/平板批量卸载app(APK)，卸载时默认会保留QQ、微信，只卸载第三方应用，不会卸载系统应用。
- [移动设备批量安装APK.bat](https://github.com/mdd1991/mdd-bat/blob/master/%E7%A7%BB%E5%8A%A8%E8%AE%BE%E5%A4%87%E6%89%B9%E9%87%8F%E5%AE%89%E8%A3%85APK.bat)
  #### 手机/平板批量安装app(APK)，将此脚本与apk文件放置同一个文件夹内运行即可安装。
- [遍历当前文件夹下文件.bat](https://github.com/Nilotica/donny-bat/blob/master/%E9%81%8D%E5%8E%86%E5%BD%93%E5%89%8D%E6%96%87%E4%BB%B6%E5%A4%B9%E4%B8%8B%E6%96%87%E4%BB%B6.bat)
  #### 遍历当前文件夹下所有文件。
- [遍历文本内容.bat](https://github.com/Nilotica/donny-bat/blob/master/%E9%81%8D%E5%8E%86%E6%96%87%E6%9C%AC%E5%86%85%E5%AE%B9.bat)
  #### 遍历打印一个文本文件内容，示例为run.log文件。
- [实时监控当前文件夹的大小，超过设定阈值时删除部分文件夹.bat](https://github.com/Nilotica/donny-bat/blob/master/%E5%AE%9E%E6%97%B6%E7%9B%91%E6%8E%A7%E5%BD%93%E5%89%8D%E6%96%87%E4%BB%B6%E5%A4%B9%E7%9A%84%E5%A4%A7%E5%B0%8F%EF%BC%8C%E8%B6%85%E8%BF%87%E8%AE%BE%E5%AE%9A%E9%98%88%E5%80%BC%E6%97%B6%E5%88%A0%E9%99%A4%E9%83%A8%E5%88%86%E6%96%87%E4%BB%B6%E5%A4%B9.bat)
  #### 实时监控当前文件夹的大小，超过设定阈值时删除部分文件夹。
- [添加当前路径到用户环境变量.bat](https://github.com/Nilotica/donny-bat/blob/master/%E6%B7%BB%E5%8A%A0%E5%BD%93%E5%89%8D%E8%B7%AF%E5%BE%84%E5%88%B0%E7%94%A8%E6%88%B7%E7%8E%AF%E5%A2%83%E5%8F%98%E9%87%8F.bat)
  #### 添加当前路径到用户环境变量(Path)，注意修改为自己计算机中的域名和计算机名。
- [添加当前路径到系统环境变量.bat](https://github.com/Nilotica/donny-bat/blob/master/%E6%B7%BB%E5%8A%A0%E5%BD%93%E5%89%8D%E8%B7%AF%E5%BE%84%E5%88%B0%E7%B3%BB%E7%BB%9F%E7%8E%AF%E5%A2%83%E5%8F%98%E9%87%8F.bat)
  #### 添加当前路径到系统环境变量(Path)。

## 常用CMD命令
- ipconfig------查看本地ip
- winver------检查Windows版本
- wmimgmt.msc----打开windows管理体系结构（WMI）
- wscript--------windows脚本宿主设置
- write----------写字板
- wiaacmgr-------扫描仪和照相机向导
- Msconfig.exe---系统配置实用程序
- mstsc----------远程桌面连接
- magnify--------放大镜实用程序
- mmc------------打开控制台
- mobsync--------同步命令
- dxdiag---------检查DirectX信息
- devmgmt.msc--- 设备管理器
- diskmgmt.msc---磁盘管理实用程序
- dcomcnfg-------打开系统组件服务
- notepad--------打开记事本
- nslookup-------网络管理的工具向导
- narrator-------屏幕“讲述人”
- netstat -an----(TC)命令检查接口
- sigverif-------文件签名验证程序
- shrpubw--------创建共享文件夹
- secpol.msc-----本地安全策略
- services.msc---本地服务设置
- sfc.exe--------系统文件检查器
- sfc /scannow---windows文件保护
- taskmgr--------任务管理器
- eventvwr-------事件查看器
- eudcedit-------造字程序
- explorer-------打开资源管理器
- perfmon.msc----计算机性能监测程序
- regedit.exe----注册表
- rsop.msc-------组策略结果集
- regedt32-------注册表编辑器
- cmd.exe--------CMD命令提示符
- chkdsk.exe-----Chkdsk磁盘检查
- certmgr.msc----证书管理实用程序
- calc-----------启动计算器
- charmap--------启动字符映射表