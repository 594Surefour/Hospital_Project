# Hospital

# 项目简介

尚医通即为网上预约挂号系统，网上预约挂号是近年来开展的一项便民就医服务，旨在缓解看病难、挂号难的就医难题，许多患者为看一次病要跑很多次医院，最终还不一定能保证看得上医生。网上预约挂号全面提供的预约挂号业务从根本上解决了这一就医难题。随时随地轻松挂号！不用排长队！

# 技术栈

### 软件架构

软件架构说明
前后端分离
后端：springboot+nacos+gateway网关搭建
前端:
1、用户的前端架构是使用了服务端渲染技术nuxt
2、管理员的前端使用了 Vue 2.x 的 Element UI

#### 使用的技术点

后端技术：

- 1、SpringBoot
- 2、SpringCloud
  （1）Nacos注册中心
  （2）Feign
  （3）GateWay
- 3、Redis
  （1）使用Redis作为缓存
  （2）验证码有效时间、支付二维码有效时间
- 4、MongoDB
  （1）使用MongoDB存储医院相关数据
- 5、EasyExcel
  （1）操作excel表格，进行读和写操作
- 6、MyBatisPlus
- 7、RabbitMQ
  （1）订单相关操作时，用mq发送短信消息给短信消费者
- 8、Docker
  （1）下载镜像 docker pull 
  （2）创建容器 docker run
- 9、阿里云OSS
- 10、容联云短信服务
- 11、微信登录/支付
- 12、定时任务

前端技术：

- 1、vue
  （1）指令
- 2、Element-ui
- 3、nuxt
- 4、npm
- 5、ECharts图表

#### 注意点

- 阿里云存储模块service_oss的application配置文件中accessKeyId等值请填写自己的，出于安全考虑，这里我删掉了自己的

- aliyun.oss.endpoint=请设置为自己的

- aliyun.oss.accessKeyId=请设置为自己的

- aliyun.oss.secret=请设置为自己的

- aliyun.oss.bucket=请设置为自己的

- 同理，容联云短信功能的RLYServiceImpl类中的方法用到的哪些id请设置为自己的

- String accountSId = 请设置为自己的

- String accountToken = 请设置为自己的

- String appId = 请设置为自己的

#### 如果想实现微信支付后收到短信提醒，记得将数据库订单表记录的联系人的电话设置为自己的手机号码

# 业务流程

![image](https://user-images.githubusercontent.com/62464956/110754494-dc668e00-8282-11eb-8796-bafe40e99330.png)

# 服务架构

![image](https://user-images.githubusercontent.com/62464956/110754536-e9837d00-8282-11eb-9b99-8ddbd87d1a14.png)
