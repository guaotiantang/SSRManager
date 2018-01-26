#!/usr/bin/env bash
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH
echo -e '
#========================================================#
#         欢迎使用SSRManager一键化安装脚本               #
#                                                        #
#	System Required: CentOS 6+/Debian 6+/Ubuntu 14.04+     #
#	Description: Install ShadowsocksR Manager              #
#	Version: 2.0																					 #
#	Author: 孤傲                                           #
#	Email: guaotiantang@outlook.com                        #
#========================================================#
'

Installed=1

cd /
echo -e "\n \n \n 正在创建安装目录..."

	if [ ! -d "/SSRManager/" ]; then  
	　Installed=0
		mkdir /SSRManager/
	fi 
	 
	if [ ! -d "/SSRManager/UserDate/" ]; then  
		mkdir /SSRManager/UserDate/
	fi  
	
	if [ ! -d "/SSRManager/ShellTmp/" ]; then  
		mkdir /SSRManager/ShellTmp/
	fi  
	
	echo -e "\n创建验证标识..."
	echo -e "RETN[SSRManagerv2.0]RETN" >>/SSRManager/Verify.key
	
	if ! wget --no-check-certificate https://raw.githubusercontent.com/guaotiantang/SSRManager/master/Manager.sh -O /SSRManager/Manager.sh; then
			if Installed ==0 ;then
				rm -rf "$ManagerPatch"
			fi
			echo -e "安装脚本下载失败 !" && exit 1
	else
		echo -e "$安装脚本下载完成 !\n正在执行安装...."
		chmod +x /SSRManager/Manager.sh
		bash /SSRManager/Manager.sh InstallSSR
	fi

