---
title: LaTeX基本操作 - 文档格式、基本输入与排版操作
tags:
  - LaTeX
categories:
  - 软件使用总结
  - LaTeX
author: 向海
banner_img: >-
  https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/%E5%85%B6%E5%AE%83%E8%BD%AF%E4%BB%B6%E4%BD%BF%E7%94%A8/LaTeX/photo_2020-07-07_22-27-15.jpg
top: false
math: true
comments: true
excerpt: 平常使用LaTeX以及学习过程中的一些操作总结
abbrlink: 33608b5a
date: 2020-07-02 11:52:59
updated: 2020-11-07 12:04:00
---

之前安装了Texlive，怎么用怎么不顺手，CJK没有预装，搜索了半天也不知道怎么安装CJK，结果选择卸载texlive换成另外一个发行版MiKTeX，结果安装过程中出现各种错误。

我服了，LaTeX这个东西真是折磨人。

因此我在这里记录一下 $\LaTeX$ 常用的代码以及排版手段

# 一、文档的设置

## 中文支持 - ctex宏包的安装和使用

建议使用MiKTeX + TeXStudio的方式联合编辑Tex文档，MiKTeX默认没有安装相关的ctex宏包，但是texlive默认是安装的。

MiKTeX 和 TeXStudio直接去官网下载就好，安装耗时大概1h。

关于ctex的安装我就不重复造轮子了，可以参考百度经验：https://jingyan.baidu.com/article/ff411625e229d512e482379c.html

载入ctex宏包的方式，可以选择两种方式：

```latex
\documentclass[<参数>]{article}
\usepackage{ctex}
或者
\documentclass[<参数>]{ctexart} % <- 这是官方文档推荐的方式
```

相关的较为细节的ctex使用方式请参考安装目录的pdf文件，下文只摘录常用的一些操作。

## Document Classes

代码格式：

```latex
\documentclass[<args>]{DocumentClass}
```

举例：

```latex
\documentclass[a4paper, 12pt, portrait, oneside,UTF8]{article}
```

### 1. 文档类的相关设定

1. article 排版科技期刊、短报告、程序文档、邀请函等。
2. report 排版多章节的长报告、短篇的书籍、博士论文等。
3. book 排版书籍。
4. slides 排版幻灯片。其中使用了较大的 sans serif 字体。也可以考虑使用 FoilTEX 来得到相同的效果。
5. ctexart 中文文档
6. ctexbeamer 中文演示文稿 

### 2. 文档类的选项参数

1. **纸张大小**（a4paper，a5paper，b4paper，letterpaper，legalpaper，executivepaper）：默认的letterpaper 纸张常见于美国，和国内常用的A4 纸张的大小稍有差别，建议自己指定。
2. **字体大小**（10pt，11pt，12pt）：默认为10pt。
3. **纸张方向**（portrait，landscape）：默认为portrait（纵向），在屏幕阅读也许landscape（横向）更方便。
4. **草稿定稿**（draft，final）：默认为final（定稿）；如果是draft（草稿），页面内容有溢出时会显示粗黑条。
5. **单面双面**（oneside，twoside）：对于article 和report 文档类，默认设置为单面，页码总是在右边；对于book 文档类，默认设置为双面，奇数页页码在右边，偶数页页码在左边，这样双面打印时页码总在外侧。
6. **新章开始**（openright，openany）：仅对book 文档类有效，默认值为openright，即每章都从奇数页开始；如果设置为openany，则每章仅从新的一页开始，不管奇偶页。
7. **字符编码**：可以选择UTF8或者GBK等，但是GBK可能出现某些兼容性错误，建议使用UTF8

## 宏包相关的设定

使用宏包的时候，默认的形式是

```latex
\usepackage[<参数>]{package_name}
```

### 1. ctex宏包的一些特殊设定

ctex包对中文文档有一些适应性支持，具体方式是通过`\ctexset`，例：

```latex
\ctexset{
	abstractname = {本文概要},
	bibname = {文\quad 献} 
}
```

## 文章的导言区

在文章的导言区需要设置的一些基本信息包括：title，author，date等等，但是这些如果要显示在文档正文页面的话，需要在文档的主环境里调用`\maketitle`函数生成标题，标题的内容格式为`content contain \title \author \date`

举例：

```latex
\title{这是标题}
\author{这是作者}
\date{2020/07/05}

\begin{document}
\maketitle %生成标题 
\end{document}
```

# 二、文档的排版与输入

> 此部分参考了JINGWHALE的文章：https://www.cnblogs.com/jingwhale/p/4250296.html

## 摘要

摘要的加入需要新建一个环境，典型使用方法为：

```latex
\begin{doocument}

\maketitle %生成标题 
\tableofcontents %插入目录
\begin{abstract}
	这是摘要
\end{abstract}

\end{document}
```

注意由于ctex宏包的一些特殊设定，对中文文档做了一些适配，因此Abstract显示为“本文概要”。需要更改的话，就在`\ctexset`里面更改

---

因此我们得到了一个中文文档的最简单模板，即：

```latex
\documentclass[]{article}
\usepackage{ctex}

\ctexset{
	abstractname = {本文概要},
	bibname = {文\quad 献} 
}

\title{这是标题}
\author{这是作者}
\date{2020/07/05}

\begin{document}

\maketitle 
\tableofcontents 
\begin{abstract}
	这是摘要
\end{abstract}

\end{document}
```

如果需要更自由地进行标题的编辑，则可以不生成标题 (不进行`\maketitle`)，在document的环境内使用文本对齐来自行进行设计：

```latex
\documentclass[a4paper, 12pt, portrait, oneside,UTF8]{article} % 中文文档
\usepackage{ctex}
\ctexset{
	bibname = {文\quad 献} 
}
%\title{title}
%\author{}
%\date{}

\begin{document}

\rule{\textwidth}{0.35mm}%分割线
\begin{center}
	姓名：aaa \par
	学号：12345678 \par
	课程：bbb\par
	时间：2020/07/13\par
\end{center}
\rule{\textwidth}{0.35mm}%分割线

\end{document}
```



## 章节、段落与章

### 1. 默认格式

默认文档可以插入三级章节

```latex
%插入章节
\section{这是一级章节}

\subsection{这是二级章节}

\subsubsection{这是三级章节}
```

默认文档可以插入二级段落

```
\paragraph{这是一个段落}  
这是一个段落的内容

\subparagraph{这是一个次级段落} 
这是一个次级段落的内容
```

效果：

![image-20200705123619058](https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/%E5%85%B6%E5%AE%83%E8%BD%AF%E4%BB%B6%E4%BD%BF%E7%94%A8/LaTeX/image-20200705123619058.png)

如果文档的类型是book，则提供了插入章节的方法

```latex
\chapter{Chapter 1}
```

### 2. 自定义格式调整

要调整章节标题在目录页中的格式，可以用`titletoc`宏包。该宏包的基本命令参数如下:

```latex
\usepackage{titletoc}

···

\titlecontents{标题层次}[左间距]{整体格式}{标题序号}{标题内容}{指引线和页码}[下间距]
```



## 换行与首行缩进

latex中文的ctex默认了有两个中文字符的首行缩进。

换行的时候可以通过一个空行或者`\par`来实现换行，这种情况下会有默认的首行缩进。

同时，也可以通过`\\`或者`\newline`的方式换行，这种情况下没有默认的首行缩进。

+ `\\` 和 `\newline` 不能直接使用，需要放在文本的末尾，如：

```latex
文本文本文本。\newline
文本文本文本。\\
```

在第一行的首行缩进可能有些特殊，下面是如何在第一行使用首行缩进以及在文本中如何自由缩进：

```latex
\setlength{\parindent}{2em} %首行全部缩进2字符。但是在第一行使用没有效果。 
\indent %首行缩进
\hspace{1.7em}	%第一段第一行的缩进只能用\hspace{1.7em}来控制空格的多少
```

例：

```latex
\hspace{1.7em}文本文本文本文本文本文本文本文本文本文本文本文本文本文本文本文本文本文本文本文本文本文本文本文本文本文本文本文本文本文本
\indent 文本文本文本文本文本文本文本文本文本文本文本文本文本文本文本文本文本文本文本文本文本文本文本文本文本文本文本
\setlength{\parindent}{2em}文本文本文本文本文本文本文本文本文本文本文本文本文本文本文本文本文本文本文本文本文本文本文本文本文本文本文本
```

## 列表

列表环境有三种：无序列表（itemize）、有序列表（enumerate）和描述列表（description）。

+ 使用Description类型的时候，适用于生成代码。

代码例:

```latex
\begin{document}

%无序列表
\begin{itemize}
	\item cell
	\item organ
	\item body
\end{itemize}
%有序列表
\begin{enumerate}
  \item cell
  \item organ
  \item body
\end{enumerate}
%描述列表
\begin{description}
  \item[python] print('hello world')
  \item[java] println('hello world')
  \item[r] vector <- c(data.xlsx)
\end{description}

\end{document}
```

效果：

![image-20200705125424301](https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/%E5%85%B6%E5%AE%83%E8%BD%AF%E4%BB%B6%E4%BD%BF%E7%94%A8/LaTeX/image-20200705125424301.png)

## 分割线

画一条横着的分割线需要用到`\rule`命令：

```latex
\rule[水平高度]{长度}{粗细}
%例：
\rule[-10pt]{14.3cm}{0.05em}
\rule{\textwidth}{0.35mm} %\textwidth就是和文本一样长
```

## 文本对齐

### 1. 一行对齐

```latex
\leftline{左对齐}
\centerline{居中}
\rightline{右对齐}
```

### 2. 多行对齐

```latex
\begin{flushleft}...\end{flushleft} %左对齐 
\begin{center}...\end{center} %居中 
\begin{flushright}...\end{flushright} %右对齐 
```

## 字体、格式及大小

### 1. 文本大小

| Command       | Nominal Point Size | Exact Point Size |
| ------------- | ------------------ | ---------------- |
| \tiny         | 5                  | 5                |
| \scriptsize   | 7                  | 7                |
| \footnotesize | 8                  | 8                |
| \small        | 9                  | 9                |
| \normalsize   | 10                 | 10               |
| \large        | 12                 | 12               |
| \Large        | 14                 | 14.40            |
| \LARGE        | 18                 | 17.28            |
| \huge         | 20                 | 20.74            |
| \Huge         | 24                 | 24.88            |

使用举例：

```latex
\Large 文本文本文本 %选定大小
\normalsize %还原默认大小
```

### 2. 文本格式

#### 字体颜色

```latex
\usepackage{color} %使用xcolor包

\textcolor{color}{text} %使用预定义的颜色
\textcolor[rgb]{r,g,b}{text} %使用rgb颜色，其中r,g,b的取值范围是[0,1]
\textcolor[RGB]{R,G,B}{text} %使用RGB颜色，其中R,G,B的取值范围是[0,255]
\color{color}{} %指定后续的颜色
----------------
%一些预定义的颜色：
\textcolor{red/blue/green/black/white/cyan/magenta/yellow}{text}
%自定义颜色
\definecolor{ColorName}{rgb}{r,g,b} %这时r/g/b的定义域就在[0-1]。
\definecolor{ColorName}{RGB}{R,G,B} %这时R/G/B的定义域就在[0-255]。
```

使用举例：

```latex
\usepackage{xcolor}
···
\textcolor{blue}{Hello World}
\textcolor[RGB]{255,0,255}{Hello World}
```

#### 文字格式

```latex
%对于英文文本：
显示直立文本： \textup{文本}
意大利斜体： \textit{文本}
slanted斜体： \textsl{文本}
显示小体大写文本： 　\textsc{文本}
中等权重： \textmd{文本}
加粗命令： \textbf{文本}
默认值： \textnormal{文本}
下划线： \underline{文本}
----------------------------
%对于中文文本，加粗下划线命令可以正常使用，并没有针对中文的斜体字体
%对于中文文本的斜体：
（未解决）
```

利用宏包`ulem`可以实现其他的标记：

```latex
\usepackage{ulem}

\uline{text}  %下划线
\uuline{text}  %双下划线
\uwave{text} %波浪线
\sout{text} %删除线
\xout{text} %斜删除线
```

## 上下标与引用文献

### 1. 正常地引用文献的方法

使用bibtex

### 2. 结合endnote使用文献的方法

我不太喜欢latex管理文献的方式，而且平常使用endnote管理文献，文献一多的话，latex就显得力不从心了。

因此我喜欢直接在word里面打草稿，并且直接使用endnote引用文献，最后copy到texstudio里面排版。

文献的上下标，可以直接使用公式格式：

```latex
文本文本$^{[1]}$
```

在文章的末尾直接使用：

```latex
\setlength{\parindent}{0em}\textbf{\Large \leftline{参考文献}} \newline
```

来标注参考文献