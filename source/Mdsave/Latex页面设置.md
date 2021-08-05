---
title: Latex页面设置
tags:
  - LaTeX
categories:
  - 软件使用总结
  - LaTeX
author: 向海
banner_img: >-
  https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Others/Fluid/post/post2.jpg
top: false
math: true
comments: true
hide: false
excerpt: 使用geometry对页边距、页面内文字统一格式等进行设置
abbrlink: 890040b9
date: 2020-11-07 12:05:49
updated: 2020-11-07 12:05:49
---

很多latex模板都将页面边距设置好了，自己不用怎么修改。但有时候也需要自己来设置页边距，使用`geometry`宏包可以方便地调整页边距。

引用：

```latex
\usepackage{geometry}
```

# 一、Introduction

`geometry`宏包提供了一个能够方便灵活地管理页面规格的接口。用户能够利用直观的参数来改变页面的布局。比如说：如果你想让文章边缘和纸张边缘的距离为2厘米，你只需要输入如下命令：`\usepackage[margin=2cm]{geometry}`。页面的布局可以利用 `\newgeometry` 命令在文章的任意位置来修改。

## 简单使用

```latex
%设置页边距依赖宏包
\usepackage{geometry}
\geometry{a4paper,left=3.18cm,right=3.18cm,top=2.54cm,bottom=2.54cm}
```

下面介绍较为高级的使用

# 二、页面布局

geometry 宏包中定义的页面布局。这个页面布局包括：total body（可打印区域）和 margins（页边距）。total body 是由 body（文字区域）和一个可修改的 header,footer 和页边批注组成。一共有四类页边距：left,right,top 和 bottom。对双面打印的文章来说，水平的页边距通常被叫做 inner 和 outer。

+ paper : total body 和 margins
+ total body : body（文字区域）（可以修改的有：head,foot,marginpar）
+ margins : left(inner),right(outer),top和bottom

![image-20201107121538880](https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/%E5%85%B6%E5%AE%83%E8%BD%AF%E4%BB%B6%E4%BD%BF%E7%94%A8/LaTeX/image-20201107121538880.png)

每一个页边距都是从它对应纸张的边上开始测量的。例如，左页边距（内页边距）是指从纸张的最左边到total body的水平距离。

body（文字区域）的大小可以通过命令 `\textwidth` 和 `\textheight` 来修改。纸张的尺寸，total body 和 margin 有如下的关系：

+ (1): paperwidth = left + width + right 
+ (2): paperheight = top + height + bottom 

total body的宽度和高度定义如下：

+ (3): width = textwidth(+marginparsep + marginparwidth)
+ (4): height = textheight(+headheight + headsep + footskip)

![image-20201107121538880](https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/%E5%85%B6%E5%AE%83%E8%BD%AF%E4%BB%B6%E4%BD%BF%E7%94%A8/LaTeX/image-20201107121538880.png)

当 marginparsep 和 marginparwidth 在 width 的范围之内，也即 includemp 这个参数被指定为true 时，等式 (3) 是系统在水平方向默认的设置。等式 (4) 是系统在垂直方向默认的设置。但是当includehead 这个参数被设置为 true 时，headheight 和 headsep 则被包括在了 height 中。同样，includefoot 这个参数将 footskip 包含在了 height 中。

下图表示了这些参数是怎样在垂直的方向起作用的：

![image-20201107121959794](https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/%E5%85%B6%E5%AE%83%E8%BD%AF%E4%BB%B6%E4%BD%BF%E7%94%A8/LaTeX/image-20201107121959794.png)

# 三、参数介绍

## 页面大小

`paper | papername`

用名字来定义纸张大小：`paper=<paper-name>`。方便起见，用户可以省去 paper 来定义纸张大小。比如：`a4paper` 和 `paper=a4paper` 作用相同

具体参数：

![image-20201107122235992](https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/%E5%85%B6%E5%AE%83%E8%BD%AF%E4%BB%B6%E4%BD%BF%E7%94%A8/LaTeX/image-20201107122235992.png)

![image-20201107122256097](https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/%E5%85%B6%E5%AE%83%E8%BD%AF%E4%BB%B6%E4%BD%BF%E7%94%A8/LaTeX/image-20201107122256097.png)

+ 页面的尺寸和页面布局大小相关。注意，页面布局的大小默认和纸张大小一致， 因此用户在绝大部分情况下都不用单独地给页面布局相关的参数赋值。

## body 的尺寸以及其内部文字的参数

这节所列出的参数主要用于改变 *total body* 的尺寸

![image-20201107122423239](https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/%E5%85%B6%E5%AE%83%E8%BD%AF%E4%BB%B6%E4%BD%BF%E7%94%A8/LaTeX/image-20201107122423239.png)

![image-20201107122507380](https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/%E5%85%B6%E5%AE%83%E8%BD%AF%E4%BB%B6%E4%BD%BF%E7%94%A8/LaTeX/image-20201107122507380.png)

图5展示了在不同的页面布局模式下的各种页面布局。页眉和页脚可以通过nohead和nofoot模式来控制，这个模式设置了页眉页脚的高度为0pt。另一方面，具有ignore前缀的选项并不改变响应的尺寸。下面几个参数可以利用三个在大括号里用逗号分开的值同时设置body和margins。

![image-20201107122535666](https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/%E5%85%B6%E5%AE%83%E8%BD%AF%E4%BB%B6%E4%BD%BF%E7%94%A8/LaTeX/image-20201107122535666.png)

![image-20201107122613672](https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/%E5%85%B6%E5%AE%83%E8%BD%AF%E4%BB%B6%E4%BD%BF%E7%94%A8/LaTeX/image-20201107122613672.png)

## 页边距大小

![image-20201107122715216](https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/%E5%85%B6%E5%AE%83%E8%BD%AF%E4%BB%B6%E4%BD%BF%E7%94%A8/LaTeX/image-20201107122715216.png)

![image-20201107122735108](https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/%E5%85%B6%E5%AE%83%E8%BD%AF%E4%BB%B6%E4%BD%BF%E7%94%A8/LaTeX/image-20201107122735108.png)

![image-20201107122750085](https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/%E5%85%B6%E5%AE%83%E8%BD%AF%E4%BB%B6%E4%BD%BF%E7%94%A8/LaTeX/image-20201107122750085.png)