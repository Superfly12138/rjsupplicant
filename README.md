# rjsupplicant
锐捷客户端for linux,可在ubuntu等系统下运行。版本1.3.1,本人已在沈阳航空航天大学测试过，系统Ubuntu16.04,测试日期2019.09。07。

##程序说明

解压后，使用终端进入当前根目录，运行rjsupplicant.sh脚本即可启动RG-SU。
	如果rjsupplicant.sh 脚本无法运行（非可执行文件），请运行以下命令: "sudo chmod +x ./rjsupplicant.sh"
	第一次使用时，可以通过 --help命令查看使用帮助文档。
	当客户端以后台模式运行时，输出运行日志（--help可查看），正常情况下，直接打印在终端无运行日志。
安装：
	无需安装，解压tar包后，直接使用	
卸载：
	直接删除软件目录
	
目录结构：
	|-rjsupplicant.sh
	|-x86
		|-rjsuppliant
		|-updateprodect
		|-lib
			|-libcrypto.so.6
			|-libpcap.so
			|-libssl.so.6
			|-librt-2.6.so
			|-librt-2.10.2.so
	|-x64
		|-rjsuppliant
		|-updateprodect
		|-lib
			|-libcrypto.so.6
			|-libpcap.so
			|-libssl.so.6
			|-librt-2.6.so
      
##命令解释
第一次运行程序，请使用-h参数 查看程序说明，输入-l命令查看配置详细信息。随后可使用其它参数配置相应的用户名、密码、网卡等。

rjsupplicant - usage
	-a --auth	authenticate mode (with parameter[0/1], 0 means "wireless", 1 means "wired".
                         default take last authmode or "wired" without this option)
	-d --dhcp	dhcp(with parameter[0/1], 0 means using system interface config, 1 means get
                         ip by dhcp server; take last config without this option)
	-n --nic	nic (with parameter[eg. eth0, detail for "-l"], default take last nic or fir
                        st nic without this option)
	-s --service	service (with parameter["servicename", detail for "-l"], default take last s
                        ervice name or first service name without this option)
	-I --ssid	wireless ssid (with parameter["ssid", detail for "-l"], only for wirless aut
                        h mode. default take last ssid or first ssid without this option)
	-w --wlan	scan wireless network: without parameter, take "-n" option to show wireless 
                        ssid by the specific nic
	-u --user	user name (with parameter[detail for "-l"], default take last user name with
                        out this option)
	-p --password	password (with parameter, it can be seted after running if without password,
                         default is null unless save password before)
	-S --save	save password (with parameter[0/1], 0 means not save, 1 means save, default 
                        take last config without this option)
	-q --quit	quit program(without parameter,take this option(-q) to quit the program)
	-l --list	list information: without parameter, only show config with this option, sush
                         as version, authmode, nic, service[option], user, service list[opt], nic li
                        st. this command default to list current authentication information）
	   --comments	run as daemon,run log in "/home/superfly/Desktop/rjsupplicant/x64/log/run.lo
                        g".
