## 阿里云盘每日自动签到
使用github action,理论每天08:00,08:05,08:10签到三次(防止签不上)，微信通知(github微信通知可能会延迟1小时左右)。

该方法需要的参数:
> pushplus的token  
ali网盘的refresh_token(一个月之后需要替换)
## 1.获取pushplus的Token(用于将签到信息推送给微信)
- 官网:https://pushplus.plus/
![pushplus.png](https://i.postimg.cc/QdqvvBDh/pushplus.png)
- 关注公众号,发送token获取token值(稍后用到)

![pushplus.png](https://i.postimg.cc/wTXrst7L/pushplus.png)
![token.png](https://i.postimg.cc/WpMpwFwS/get-token.png)
## 2.获取阿里网盘的refresh_token
![refresh-token.png](https://i.postimg.cc/ydDtGssP/refresh-token.png)
## 3.将该库导入自己新建的仓库
![import-repository.png](https://i.postimg.cc/XYTC5gXY/import-repository.png)
## 4.设置Actions和两个变量 refresh_token(refresh_token一个月之后需要替换) 和 pushplus_token
![set-action.png](https://i.postimg.cc/7YmK7hFW/set-action.png)
![new-secret.png](https://i.postimg.cc/3xb7LKvL/new-secret.png)
![set-secret.png](https://i.postimg.cc/rwgbjgvM/set-secret.png)
## 5. 运行测试
![action-run.png](https://i.postimg.cc/DzvhySKy/action-run.png)
## 6. 微信端收到消息
![wechat-receive.png](https://i.postimg.cc/JtCVwnq8/wechat-receive.png)
