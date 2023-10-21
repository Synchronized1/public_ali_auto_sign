#!/bin/bash

# 1.获取配置的refresh_token
refresh_token=$1
sudo echo $refresh_token

# 2.如果aliyunpan_config.json已有refresh_token,那么就需要用这个刷新后的token
lastest_refresh_token=`jq '.userList[0].refreshToken' aliyunpan_config.json | sed 's/\"//g'`
sudo echo $lastest_refresh_token

if test -n "$lastest_refresh_token" && [ "$lastest_refresh_token" != "null" ];
  then
   refresh_token=$lastest_refresh_token   
fi

sudo echo $refresh_token
# 2.安装curl和aliyunpan-cli
sudo apt-get install curl  
sudo curl -fsSL http://file.tickstep.com/apt/pgp | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/tickstep-packages-archive-keyring.gpg > /dev/null && echo "deb [signed-by=/etc/apt/trusted.gpg.d/tickstep-packages-archive-keyring.gpg arch=amd64,arm64] http://file.tickstep.com/apt aliyunpan main" | sudo tee /etc/apt/sources.list.d/tickstep-aliyunpan.list > /dev/null && sudo apt-get update && sudo apt-get install -y aliyunpan

# 3.登录并刷新refresh_token,会自动更新 /etc/aliyunpan/aliyunpan_config.json
# 刷新命令如果30秒内还没执行完就终止
sudo aliyunpan login -RefreshToken=$refresh_token
sudo timeout 30 aliyunpan token update