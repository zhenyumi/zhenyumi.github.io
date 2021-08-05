---
title: 获取网易云音乐歌曲播放以及cover的url
tags:
  - Internet
categories:
  - 软件使用总结
author: 向海
excerpt: 通过检查元素的方式获取获取网易云音乐歌曲mp3以及cover的url
index_img: >-
  https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/2020-06-30_1.png
banner_img: >-
  https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Others/Fluid/post/post2.jpg
top: false
math: true
comments: true
abbrlink: a61cda12
date: 2020-06-30 20:09:19
updated: 2020-06-30 20:24:00
---


### 获取歌曲url

一个典型的网易云外链播放的url是：`'http://music.163.com/song/media/outer/url?id=1316562917.mp3'`

即`http://music.163.com/song/media/outer/url?id=` + `歌曲id` + `.mp3`

获取歌曲id的方法有两个：

1. 可以在浏览器的地址栏找到歌曲id

![image-20200630201545100](https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/image-20200630201545100.png)

因此组合一下就能得到一个url

2. 通过检查元素的方式得到歌曲id：

+ 浏览器`F12`之后通过`Ctrl F`寻找audio：

![image-20200630201728754](https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/image-20200630201728754.png)

这样也能获得歌曲id

### 获取歌曲封面url

同样浏览器`F12`之后通过`Ctrl F`寻找image，复制content后面的url，即为cover的url

![image-20200630201902195](https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/image-20200630201902195.png)