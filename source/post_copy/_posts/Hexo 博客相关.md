---
title: Hexo 博客相关
author: 向海
index_img: >-
  https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/%E5%B8%B8%E7%94%A8%E5%91%BD%E4%BB%A41.jpg
banner_img: >-
  https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/%E5%B8%B8%E7%94%A8%E5%91%BD%E4%BB%A44.jpg
top: false
tags:
  - Hexo
categories:
  - 软件使用总结
  - Hexo
excerpt: 与这个博客相关的一些东西
math: true
abbrlink: fa3fcd67
date: 2020-06-29 13:31:46
updated: 2020-06-30 20:08:00
---

## 关于这个博客

 　　这个网站是依赖Hexo搭建起来的，将网页配置文件都加载到了GitHub Pages上，因为GitHub下行速率比较有限，因此同时还使用了腾讯云的对象存储作为图床。

　　因为日常使用并没有那么高频，也就没有特意去购买一个专用的云服务器，所以托GitHub总是抽风的福，博客也经常挂掉。

　　<del>也许以后我有钱之后会购买一个云服务器来建站吧</del>
　　

<img src="https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/%E5%B8%B8%E7%94%A8%E5%91%BD%E4%BB%A42.jpg" alt="常用命令2" style="zoom:33%;" />

## Hexo 博客常用内容

### 1. Git Bash 端操作



| 名称                                                         | 代码                           |
| ------------------------------------------------------------ | ------------------------------ |
| 清除缓存                                                     | hexo clean                     |
| 生成本地网页缓存                                             | hexo generate / hexo g         |
| 将本地文件同步到 GitHub Page                                 | hexo deploy / hexo d           |
| 组合输入同步                                                 | hexo clean && hexo g && hexo d |
| 本地搭建 (用于调试，在本地搭建<br />之后可以使用Hexo Admin管理Posts) | hexo server / hexo s           |

1. 在上传之前，务必先**清除缓存**，以及使用 hexo s 本地调试一下

<img src="https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/%E5%B8%B8%E7%94%A8%E5%91%BD%E4%BB%A43.jpg" alt="常用命令3" style="zoom: 20%;" />

### 2. 添加博文

#### 直接添加Post

　　添加博文（post、page、...）的方式大致有两种：

1. cd至本地Hexo安装文件夹，使用Git Bash的命令行：

   ```Git
   cd <path>
   hexo new <layout> "name"
   ```

   Example:

   ```Git
   cd E:\My_Hexo
   hexo new post "New_Post" 
   ```

   之后就在本地Hexo文件夹的source文件夹中，找到通过命令行新建的md文件，进行编辑。

   <del>我推荐使用Typora编辑Markdown，Typora天下第一</del>

   编辑完成后使用 “hexo clean && hexo g && hexo d” 与GitHub Pages进行同步

2. 使用Hexo Admin

   　　使用Hexo Admin的好处是可以进行可视化管理，缺点是创建博文时候的自定义模板（scaffold）容易受到影响，自定义的参数较少。

   Hexo Admin使用的时候需要先清理缓存，之后再次生成缓存文件，之后在本地搭建网页：

   ```Git
   hexo clean
   hexo g
   hexo s
   ```

   　　可以在 http://localhost:4000/ 观察生成的静态网页的效果，同时在 http://localhost:4000/admin/ 使用Hexo Admin进行可视化管理。

   ---

　　因此推荐使用命令行进行新建，通过Hexo Admin进行管理。

#### 从草稿（Draft）添加Post

##### (1) 添加Draft

Hexo 的一种特殊布局：`draft`，这种布局在建立时会被保存到 `source/_drafts` 文件夹。

```Git
hexo new draft "name"
```

之后可以在`source/_drafts`中找到该文件进行编辑

##### (2) 发布（Publish）草稿

可通过 `publish` 命令将草稿移动到 `source/_posts` 文件夹，该命令的使用方式与 `new` 十分类似，也可在命令中指定 `layout` 来指定布局。

```Git
hexo publish [layout] "name"
```

### 3. 博文的常用参数

| Config     | Description and Example                                      |
| :--------- | :----------------------------------------------------------- |
| title      | 文章的标题<br />title: 'Hello World'                         |
| author     | 文章的作者<br />author: me                                   |
| tags       | 文章的标签<br />tags: <br />  - Hexo                         |
| categories | 文章的分类<br />categories:<br />  - Hexo                    |
| excerpt    | 文章的摘要<br />excerpt: 这是摘要                            |
| date       | 文章的创建时间<br />date: 2020-06-29 19:06:00                |
| update     | 文章的更新时间<br />updated: 2020-06-29 19:06:00             |
| comments   | 是否允许评论<br />comments: true                             |
| top        | 是否将post置顶<br />top: true                                |
| index_img  | 文章的标题图<br />index_img: [url] <br />或者是<br />index_image: [本地目录]，一般在主题的img文件夹<br />即设置为index_image: /img/welcome.png |
| banner_img | 文章内的顶部title图片<br />设置发昂发同index_img             |
| math       | 是否启用公式渲染（LaTeX，KaTeX，Mathjex）<br />math: true    |

