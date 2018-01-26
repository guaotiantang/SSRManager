#!/usr/bin/env bash
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

#=================================================
#	System Required: CentOS 6+/Debian 6+/Ubuntu 14.04+
#	Description: Install ShadowsocksR Manager
#	Version: 2.0
#	Author: 孤傲
#	Email: guaotiantang@outlook.com
#=================================================





	cd /
	mkdir /SSRManager/
	mkdir /SSRManager/UserDate/
	mkdir /SSRManager/ShellTmp/
	echo -e "RETN[SSRManagerv2.0]RETN" >>/SSRManager/Verify.key
	
	if ! wget --no-check-certificate https://raw.githubusercontent.com/guaotiantang/SSRManager/master/Manager.sh -O /SSRManager/Manager.sh; then
			echo -e "${Error} 安装脚本下载失败 !" && exit 1
	else
		echo -e "${Info} 安装脚本下载完成 !\n正在执行安装...."
		chmod +x /SSRManager/Manager.sh
		bash /SSRManager/Manager.sh
	fi

