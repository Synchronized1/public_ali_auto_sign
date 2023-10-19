## 阿里云盘每日自动签到
使用github action,理论每天00:00,00:05,00:10签到三次(防止签不上)，微信通知。

该方法需要的参数:
> pushplus的token  
ali网盘的refresh_token(一个月之后需要替换)
## 1.获取pushplus的Token(用于将签到信息推送给微信)
- 官网:https://pushplus.plus/
![image](https://github.com/Synchronized1/alipan_auto_sign/assets/58451554/f9d84bca-98f1-4028-a910-a557c59f533d)
- 关注公众号,发送token获取token值(稍后用到)

![image](https://github.com/Synchronized1/alipan_auto_sign/assets/58451554/c57520cb-8248-4036-b4b5-743f79d8ebca)
![image](https://github.com/Synchronized1/alipan_auto_sign/assets/58451554/d704169b-b862-4a57-b0ad-a305c75791f9)
## 2.获取阿里网盘的refresh_token
![image](https://github.com/Synchronized1/alipan_auto_sign/assets/58451554/b67d9e7c-a4a9-4603-a88d-7534b139732b)
## 3.将该库导入自己新建的仓库
![image](https://github.com/Synchronized1/alipan_auto_sign/assets/58451554/47ae04e7-2cb9-4ee1-be77-4acaf9f5a7f2)
## 4.设置Actions和两个变量 refresh_token(refresh_token一个月之后需要替换) 和 pushplus_token
![image](https://github.com/Synchronized1/alipan_auto_sign/assets/58451554/0a94e24a-0853-4ad2-af4a-8c62bba40173)
![image](https://github.com/Synchronized1/alipan_auto_sign/assets/58451554/01f3ac0d-7bf9-41a4-bb53-ab8cbe401992)
![image](https://github.com/Synchronized1/alipan_auto_sign/assets/58451554/7c29bb68-8939-419b-919d-055e44e52eb1)
## 5. 运行测试
![image](https://github.com/Synchronized1/alipan_auto_sign/assets/58451554/7c89ae38-e21d-47bc-a99a-0f8c9a673127)
## 6. 微信端收到消息
![image](https://github.com/Synchronized1/alipan_auto_sign/assets/58451554/9c6b5f0f-f95b-418e-86da-527053e11d50)
