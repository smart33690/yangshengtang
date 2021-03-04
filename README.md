# yangshengtang
1.登录服务器，47.101.206.232，输入账号密码。
2.进入后当前目录就是root，就是存放文件目录
3.上传文件命令，rz    选择要上传的jar包
4.jar包传完后，启动命令，nohup java -jar yangshengtang-1.0-SNAPSHOT.jar >yangshengtang.log 2>&1 &
5.查看日志：tail -100 yangshengtang.log   查看最后100行日志
6.停止服务，先运行   ps -ef | grep yangshengtang  ，查看进程id，然后 kill -9 进程id，停止服务。
7.服务使用默认端口 80，首页 http://47.101.206.232/
8.后台数据统计地址，http://47.101.206.232/ystadmin
 
