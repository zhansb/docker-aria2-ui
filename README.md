# Aria2 UI

## 简介
AriaNg是一个现代的web前端，使aria2更容易使用，Aria2是一个轻量级、多协议、多来源的下载工具（支持 HTTP/HTTPS、FTP、BitTorrent、Metalink）。  

## 安装&启动
```
wget https://raw.githubusercontent.com/zhansb/docker-aria2-ui/master/docker-compose.yml
docker-compose up -d
```

## 配置
网页端登录网址 http://station_ip:10080 ，station_ip为启动主机的IP  
使用前需要配置：  
1. AriaNg 设置->RPC (station_ip:6800)->Aria2 RPC 密钥 中填写docker-compose.yml中的`ARIR_RPC_SECRET`值，其他参数默认  
![AriaNg配置说明](https://github.com/zhansb/docker-aria2-ui/raw/master/ariang_settings.png)  
2. 正常情况下，点击`重载页面`后会显示"已连接"  

## 测试
* 下载测试：  
点击`新建`，打开种子文件中选择种子，可以到[Ubuntu镜像下载](https://ubuntu.com/download/alternative-downloads)中的BitTorrent项下载种子测试  

