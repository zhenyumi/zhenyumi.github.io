---
title: Hexo Fluid使用utterances评论系统，以及相关异常处理
tags:
  - Hexo
categories:
  - 软件使用总结
  - Hexo
author: 向海
index_img: >-
  https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/Hexo%20utterances/Hexo%20utterances.png
banner_img: >-
  https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/Hexo%20utterances/Hexo%20utterances1.png
top: false
math: true
excerpt: fluid搭载utterances，以及一些异常处理。
abbrlink: 4cba9f03
date: 2020-06-30 13:07:38
updated: 2020-06-30 16:54:00
---

> Banner and Index Image -> https://www.pixiv.net/users/20593668

　　今天在配置utterances的时候遇到了一些问题，在主题config里面设置都是无误的，但是评论仍然无法显示，通过F12检查之后发现是utterances没有授权（post 401）。
　　
　　尽管已经在相关repo里安装了utterances，但是仍然显示401的错误，因此我采取了更加直接的方式去添加评论系统。

### 如何在Hexo Fluid上搭载utterances

#### 1. 新建repo，设置utterances

![1](https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/Hexo%20utterances/1.png)

　　在GitHub上面新建一个public的仓库，名称可以随意

　　进入 https://github.com/apps/utterances 为刚才新建的仓库安装utterances

![image-20200630131908879](https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/Hexo%20utterances/image-20200630131908879.png)

<img src="https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/Hexo%20utterances/Snipaste_2020-06-30_12-11-26.png" alt="Snipaste_2020-06-30_12-11-26" style="zoom: 67%;" />

之后在 https://utteranc.es/ 页面中对 utterances 进行设置

<img src="https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/Hexo%20utterances/image-20200630132152523.png" alt="image-20200630132152523" style="zoom:67%;" />

之后就是一些其它的参数，自行按照喜好设置即可：

<img src="https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/Hexo%20utterances/image-20200630132244611.png" alt="image-20200630132244611" style="zoom:67%;" />

<img src="https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/Hexo%20utterances/image-20200630132306856.png" alt="image-20200630132306856" style="zoom:67%;" />

　　最后我们得到：

<img src="https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/Hexo%20utterances/image-20200630132341461.png" alt="image-20200630132341461" style="zoom:67%;" />

```html
<script src="https://utteranc.es/client.js"
        repo="zhenyumi/comment_hexo"
        issue-term="pathname"
        theme="github-light"
        crossorigin="anonymous"
        async>
</script>
```

#### 2. 修改fluid主题设置

在 _config.yml 文件中修改相关设置

```yaml
# post.comments.enable: true
comments:  # 评论
    enable: true  # 开启评论
    type: utterances
```

　　按照第一步最后得到的配置，继续在_config.yml中修改

```yaml
# utterances
# You can install utterances with https://utteranc.es/ and generate your configuration
utterances: 
  repo: zhenyumi/comment_hexo
  issue_term: pathname
  label: #
  theme: github-light
  crossorigin: anonymous
```

至此，hexo clean && hexo g && hexo d 之后就可以成功搭载评论系统了

### 异常处理

#### 1. Post 401

　　通过F12检查之后我们发现utterances的token请求异常是401，尽管成功在仓库安装了utterances，但是仍然出现了这种异常。

<img src="https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/Hexo%20utterances/image-20200630132748795.png" alt="image-20200630132748795" style="zoom: 80%;" />

　　如果是这样的话，我们也可以在fluid主题的 ejs 文件中直接加入代码，在某些位置加入utterances评论系统，如打开 \themes\fluid\layout\post.ejs ，在每个post的末尾处加入评论系统：

　　原代码：

```html
<!-- Comments -->
              <div class="comments" id="comments">
                <% var type = '_partial/comments/' + theme.post.comments.type %>
                <%- partial(type) %>
              </div>
```

　　修改后：

```html
              <!-- Comments -->
              <div class="comments" id="comments">
                <% var type = '_partial/comments/' + theme.post.comments.type %>
                <%- partial(type) %>
                <script src="https://utteranc.es/client.js"
                        repo="zhenyumi/comment_hexo"
                        issue-term="pathname"
                        theme="github-light"
                        crossorigin="anonymous"
                        async>
                </script>
              </div>
```

之后再 hexo clean && hexo g && hexo d 之后也可以成功搭载评论系统

### Summary

　　对 post 401 的处理方法其实就和在其他主题中加入 utterances 的方法差不多。

　　Hope that helps.

