---
title: LaTeX页眉页脚的设置
tags:
  -  LaTeX
categories:
  -  软件使用总结
  -  LaTeX
author: 向海
banner_img: >-
 https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Others/Fluid/post/post2.jpg
top: false
math: true
comments: true
hide: false
excerpt: 使用fancyhdr包进行页眉页脚设置
abbrlink: 678c8b45
date: 2020-11-07 11:35:33
updated: 2020-11-07 11:35:33
---

在$\LaTeX$中对页面的页眉页脚设置可以考虑使用` fancyhdr`包进行实现。

> 参考文章：[刘亚彬92] https://www.jianshu.com/p/7440335da219

# 一、LaTeX预定义的页面格式

Latex 预定义了以下几种页眉页脚的页面风格：

 - **empty** 没有页眉页脚；
 - **plain** 没有页眉，页脚是居中的页码；
 - **heading** 没有页脚，页眉是章节名称的页码；
 - **myheading** 没有页脚，页眉是页码和用户自定义的内容。

可以使用 `\pagestyle{<风格>}` 设置整体页面风格，也可以用 `\thispagestyle{<风格>}` 单独设置当前页的风格。book 类默认使用 heading 风格，report 和 article 默认使用 plain 风格，中文的几个 ctex 文档类则都默认使用 heading 风格。

LaTex 已经对一些必要的地方自动设置好了页面风格。如在标题页（包括手工或自动由 `\maketitle` 生成的 titlepage 环境），会使用 empty 风格禁用所有页眉页脚；而在不单独成页的 `\maketitle` ，单独成页的 `\part`，以及 `\chapter` 命令所在的一页，则使用 plain 风格。

# 二、基础操作

## 引入

fancyhdr 宏包提供了新的页面风格 **fancy** ,我们可以通过 **fancy** 风格来设置我们的页眉页脚。页眉页脚的设置一般都放在导言区或文档类模板中。本文的例子中所有的代码都是放置到自定义的文档类模板中，因此使用的包加载命令为 `\RequirePackage` ，但效果和 `\usepackage` 是一样的。首先我们先使用 `\RequirePackage{fancyhdr}` 或 `\usepackage{fancyhdr}` 命令引入 fancyhdr 宏包。

<img src="https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/%E5%85%B6%E5%AE%83%E8%BD%AF%E4%BB%B6%E4%BD%BF%E7%94%A8/LaTeX/image-20201107114141219.png" alt="image-20201107114141219" style="zoom:100%;" />
## 设置具体格式

### 1. 设置与调用的格式

fancyhdr 将页面布局分成如下几个部分：

<img src="https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/%E5%85%B6%E5%AE%83%E8%BD%AF%E4%BB%B6%E4%BD%BF%E7%94%A8/LaTeX/14174754-a700cc72b4a260a8.png" alt="img" style="zoom:100%;" />
页面页脚左中右共6个部分组成，考虑到双面文档的奇数页和偶数页则共有12个部分。另外还有2个装饰性的分割线。

我们需要首先自己设置格式`fancy style`，之后再在页面格式选择时选择`fancy style`.

下面是一个常用的使用示例：

```latex
% 设置自定义格式，名称为Self Defined
\fancypagestyle{Self Defined}{
	\fancyhf{}% 清空当前页眉和页脚的设置
	% 设置页眉 
	\fancyhead[L]{Text}
	\fancyhead[C]{}
	\fancyhead[R]{}
	\renewcommand{\headrulewidth}{0.7pt} % 页眉与正文之间的水平线粗细
	% 设置页脚
	\fancyfoot[RO,RE]{\thepage}%在每页的右下脚以斜体显示书名
	\renewcommand{\footrulewidth}{0.7pt}% 页脚与正文之间的水平线粗细
} 
% 选用 fancy style
\pagestyle{Self Defined}
```

### 2. 清除预设设置

在设定格式之前，建议先清除原先预设的设置，这部分通过一些命令来实现：

+ `\fancyhead{}` 清除页眉设置
+ `\fancyfoot{}` 清除页脚设置
+ `\fancyhf{}` 同时清除页眉页脚设置
+ `\renewcommand\headrulewidth{0pt}` 清除页眉中的分割线
+ `\renewcommand\footrulewidth{0pt}` 清除页脚中的分割线

### 3. C参数（位置参数）

设置页脚时，使用到了 `C` 可选参数，完整的可选参数如下：

| 参数 | 意义 | 分组 |
| :--: | :------: | :--: |
| E | 偶数页 | 1 |
| O | 奇数页 | 1 |
| L | 左区域 | 2 |
| C | 中间区域 | 2 |
| R | 右区域 | 2 |
| H | 页眉 | 3 |
| F | 页脚 | 3 |

对应如图：

<img src="https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/%E5%85%B6%E5%AE%83%E8%BD%AF%E4%BB%B6%E4%BD%BF%E7%94%A8/LaTeX/14174754-a700cc72b4a260a8.png" alt="img" style="zoom:100%;" />
这些参数应用在 `\fancyhead{},\fancyfoot{}` 和 `\fancyhf{}` 命令中。其中第三组参数只应用在 `\fancyhf{}` 命令中。通常我们只用 `\fancyhf{}` 命令来清空页眉页脚，而真正的设置都是使用带前两组参数的 `\fancyhead{}` 和 `\fancyfoot{}` 来完成

使用例：

```latex
% 设置 fancy style 的属性
\fancypagestyle{Self Defined}{
	\fancyhf{}% 清空当前页眉和页脚的设置
	% 设置页眉 
	\fancyhead[L]{text} % 在页眉leftheader区域添加
	\fancyhead[C]{text} % 在页眉centeredheader区域添加
	\fancyhead[R]{text} % 在页眉rightheader区域添加
	\renewcommand{\headrulewidth}{0.7pt} % 页眉与正文之间的水平线粗细
	% 设置页脚
	\fancyfoot[RO,RE]{\thepage}%在每页的右下脚以斜体显示书名
	\renewcommand{\footrulewidth}{0.7pt}% 页脚与正文之间的水平线粗细
} 
% 选用 fancy style
\pagestyle{Self Defined}
```

页眉：

<img src="https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/%E5%85%B6%E5%AE%83%E8%BD%AF%E4%BB%B6%E4%BD%BF%E7%94%A8/LaTeX/image-20201107115248077.png" alt="image-20201107115248077" style="zoom:100%;" />
页脚：

<img src="https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/%E5%85%B6%E5%AE%83%E8%BD%AF%E4%BB%B6%E4%BD%BF%E7%94%A8/LaTeX/image-20201107115258820.png" alt="image-20201107115258820" style="zoom:100%;" />
通过选择合适的参数进行组合。