---
title: Markdown & Typora的使用与速查手册
tags:
  -  Typora
categories:
  -  软件使用总结
  -  Typora
author: 向海
index_img: >-
 https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/Typora%E4%BD%BF%E7%94%A8/typora_index1.png
banner_img: >-
 https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/Typora%E4%BD%BF%E7%94%A8/typora_banner1.png
top: false
math: true
excerpt: 如何更加优雅快捷地使用Typora
comments: true
abbrlink: 41fae04c
date: 2020-06-30 15:17:31
updated: 2020-07-29 16:00:00
---

# 快速检索

1. [KaTeX Functions](https://katex.org/docs/supported.html)

2. [KaTeX Tables](https://katex.org/docs/support_table.html)

 # 前言

 　　写这篇文章的主要契机是为了更好地向周围的人宣传<del>安利</del>Typora 。
 
 　　最初的时候我只是想找一个更方便的方式去记笔记，后来偶然接触到了有道云笔记和印象笔记的markdown，但是因为它们的使用方法对我来说并不是非常友好，Typora就很好地满足了我日常高速，大量，多图笔记的需求，极大地简化了我排版以及整理笔记的过程。后来了解了 KaTeX 公式的输入，整个笔记过程就变得更加便捷了。因此我希望将 Typora 推荐给周围的更多人，然而大多数人刚开始的时候就被 markdown 的代码式输入给难倒了，感受到极大地不习惯。然而通过 Typora 来进行 markdown 的编辑甚至有时候比 Office Words 还方便。
 
 　　再后来，接触了腾讯云的对象存储作为图床，整个笔记过程大部分就都放在了云端，感觉很有趣。因此这篇文章主要介绍一下常用的 Typora 快捷键以及指令，还有一些较为自由的用法。

# 一、Markdown与Typora简介

## 什么是Markdown

　　Markdown是一种可以使用普通文本编辑器编写的标记语言，通过简单的标记语法，它可以使普通文本内容具有一定的格式。

　　Markdown具有一系列衍生版本，用于扩展Markdown的功能（如表格、脚注、内嵌HTML等等），这些功能原初的Markdown尚不具备，它们能让Markdown转换成更多的格式，例如LaTeX，Docbook。Markdown增强版中比较有名的有Markdown Extra、MultiMarkdown、 Maruku等。这些衍生版本要么基于工具，如Pandoc；要么基于网站，如GitHub和Wikipedia，在语法上基本兼容，但在一些语法和渲染效果上有改动[^ 1 ] 。

　　由于目前还没有一个权威机构对 Markdown 的语法进行规范，各应用厂商制作时遵循的 Markdown 语法也是不尽相同的。其中比较受到认可的是 [GFM 标准](https://github.github.com/gfm/)，它是由著名代码托管网站 [GitHub](https://github.com/) 所制定的。Typora 主要使用的也是 GFM 标准。同时，你还可以在 `文件  -  偏好设置  -  Markdown 语法偏好  -  严格模式` 中将标准设置为「更严格地遵循 GFM 标准」。具体内容你可以在官方的 [这篇文档](http://support.typora.io/Strict-Mode/) 中查看[^ 2 ]。

## 什么是Typora

<img src="https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/Typora%E4%BD%BF%E7%94%A8/image-20200630153003845.png" alt="image-20200630153003845" style="zoom:100%;" />
　　Typora 是一款**支持实时预览的 Markdown 文本编辑器**。它有 OS X、Windows、Linux 三个平台的版本，并且由于仍在测试中，是**完全免费**的。

　　是一个 Markdown 文本编辑器，它支持且仅支持 Markdown 语法的文本编辑。在 [Typora 官网](https://typora.io/) 上他们将 Typora 描述为 「A truly **minimal** markdown editor. 」[^ 2 ]。

　　Typora最令我惊艳的一点就是它的实时渲染，即输入markdown代码之后就直接显现出效果，习惯之后输入的速度并不逊于 Words。

　　可以在 Typora 的官网下载最新版本的软件。

# 二、Typora 常用指令与常用快捷键

## 常用代码指令与快捷键

### 1. 标题

使用 `#` 可以表示标题，一级标题对应一个 `#` ，二级标题对应两个 `#` 号，最多至六级标题。在Typora中，`#` 后要紧接着一个空格才能表示标题，否则就是普通字符。

```markdown
# 一级标题 H1
## 二级标题 H2
### 三级标题 H3
#### 四级标题 H4
##### 五级标题 H5
###### 六级标题 H6
```

在Typora中，也可以使用快捷键Ctrl+1（2，3，4，5，6）表示相对应的标题。Ctrl+0表示段落。标题快捷键信息可在菜单栏中的段落选项下查看。

### 2. 首行缩进

Typora的首行缩进方式相对自由，有很多种方法。

最简单的方法其实是在 `偏好设置  - > Markdown` 里设置首行缩进。

如果要在某个特定的段落进行缩进的话，可以使用两个全角空格。

+ 一般输入法要切换到全角符号的话，可以使用 `Shift + Space` 快捷键
+ 如果输入法没有切换到全角模式，可能需要在输入法的设置界面启用该快捷键（比如QQ输入法）。

### 3. 文本强调：斜体、粗体、变粗 + 斜体

+ 用一对星号 `*` 括住的文本表示斜体文本，如：*要变斜体的文本* ；
 + 也可以用一对下划线 `_` 括住文本来表示斜体文本，如：_要变斜体的文本_ ；
 + 也可以使用Typora的快捷键Ctrl+I来表示斜体文本。

+ 用一对`**`括住的文本表示粗体文本，如：**要变粗体的文本**；
 + 也可以用一对`__`括住的文本来表示粗体文本，如：__要变粗体的文本__；
 + 也可以使用Typora的快捷键Ctrl+B来表示粗体文本。

+ 用一对`***`括住的文本表示粗斜体文本，如：***要变粗斜体的文本***；
 + 也可以用一对 `___` 括住的文本来表示粗斜体文本，如：___要变粗斜体的文本___；

### 4. 分割线、下划线、删除线、文本高亮

+ **分割线**，可以使用**三个及以上**的 `+` 号或 `*` 号或 `-` 来表示一条分割线；

`***` :

***

`---` : 

---

`+++` : （博客的网页似乎不支持 `+++` 的显示）

+++

+ 删除线，可以使用一对 `~~` 括住的文本来表示删除文本，如： `~~要删除的文本~~`，
 + 效果：~~要加删除线的文本~~；
 + 在Typora中，也可以使用快捷键**Alt+Shift+5**来加删除线，语法相同。
 + 使用HTML的标签也OK，如 `<del>要删除的文本</del>`，效果：<del>要删除的文本</del>
+ 下划线，可以使用HTML的标签`<u>`和`</u>`表示增加下划线的文本，如：`<u>要加下划线的文本</u>`，
 + 效果：<u>要增加下划线的文本</u>
 + 在Typora中，也可以使用快捷键**Ctrl+U**来增加下划线，语法也是相同的，下划线。
+ 文本高亮，在Typora中，可以用一对 `==` 将要高亮的文本括起来，如 `==要高亮的文本==`，
 + 效果：==高亮==

### 5. 列表

+ 无序列表

可以使用`*`，`+`或`-`标记符号来表示无序列表项，记住要在标记符号后**添加一个空格**，语法显示如下：

```markdown
* 第一项
* 第二项
+ 第一项
+ 第二项
 - 第一项
 - 第二项
```

+ 有序列表

有序列表的数字并不重要

```markdown
1. 第一项
3. 第二项
10. 第三项
```

+ 嵌套列表

```
+ 无序 1
	+ 无序 1.1
		1. 无序 1.1.1
			1. 有序 1
			2. 有序 2
```

效果：

+ 无序 1
	+ 无序 1 1.1
		1. 无序 1.1.1
			1. 有序 1
			2. 有序 2

### 6. 引用块（Block Quote）

当我们想要引用别人的文章内容时，可以将其放在区块内。

+ 可以使用 `>` 加空格来表示引用块。
+ 使用 `Enter` 退出引用块

效果：

> 这是引用
>
> > 这是第二层引用
> >
> > > 这是第三层引用

#### 代码块与代码段

如果是一行代码，可以使用段内代码块来表示，用一对 **`**（数字1旁边的符号）括住代码。

+ 比如 `printf("Hello World!")`

如果是代码段，那么可以使用**三个 ` 加Enter/空格+编程语言**来表示。如：

+ 可以在代码块的右下角选择编程语言。

```markdown
​```Python
print('hello world')
print('!')
​```
```

效果:

```Python
print('hello world')
print('!')
```

### 7. 链接

#### 访问网页或文件

链接的使用方式有两种语法，如下：

```markdown
[链接文字](链接地址)
或
<链接地址>
```

举例：

```markdown
[鹘横海](https://zhenyumi.github.io/)
<https://zhenyumi.github.io/>
```

效果：

[鹘横海](https://zhenyumi.github.io/)
<https://zhenyumi.github.io/>

当鼠标移到相应的链接文字时，按住**Ctrl+鼠标左键**点击访问。

链接除了可以打开相应的网页外，还可以**打开本地文件**，使用方式类似，不过链接地址需要使用本地文件的地址，相对地址、绝对地址均可：

```markdown
[打开LinkTest.md文档](./LinkTest.md)
[打开LinkTest.png照片](./img/LinkTest.png)
[打开某个网络图片](url)
```

> 一个小圆点`.`表示当前目录，故`./LinkTest.md`表示当前目录下的LinkTest.md文件，`./img/LinkTest.png`表示当前目录下的 img 文件下的LinkTest.png文件。
>
> 两个小圆点 `..` 表示上一级目录。

#### 页内跳转

```markdown
[链接文字](#标题文字)
```

举例：

```markdown
[什么是Typora](#### 什么是Typora)
```

[什么是Typora](#### 什么是Typora)

#### 图片

可以在Markdown文档中插入图片，语法如下：

 - 首先一个感叹号
 - 然后中括号里面写属性文本
 - 小括号里面写图片地址，后可接标题

```marldown
![alt 属性文本](图片地址)

![alt 属性文本](图片地址 "可选标题")
```

举例：

```markdown
<img src="./img/PictureTest.png" alt="本地png图片PictureTest.png" style="zoom:100%;" />
<img src="./img/PictureTest.jpg" alt="本地jpg图片" style="zoom:100%;" />
![网络图片](url)
```

在Typora中，也可以直接使用`Ctrl+C`，`Ctrl+V`来直接进行复制粘贴图片，但是，由于Markdown是需要图片的地址的，所以需要简单设置一下Typora。

<img src="https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/Typora%E4%BD%BF%E7%94%A8/image-20200630160629783.png" alt="image-20200630160629783" style="zoom:100%;" />
+ 表示复制到与该md文件同目录的pics文件夹中

### 8. 表格

#### 基本表格

Markdown 构建表格的时候使用 `|` 来分隔不同的单元格，使用 `-` 来分隔表头和其他行。

+ 也可以使用Ctrl+T快捷键创建表格

<img src="https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/Typora%E4%BD%BF%E7%94%A8/image-20200630160811535.png" alt="image-20200630160811535" style="zoom:100%;" />
举例：

```markdown
|表头|表头|表头|
|---|---|----|
|单元格|单元格|单元格|
|单元格|单元格|单元格|
```

效果

| 表头 | 表头 | 表头 |
|  - ---- - |  - ---- - |  - ---- - |
| 单元格 | 单元格 | 单元格 |
| 单元格 | 单元格 | 单元格 |

设置对齐方式：

 - `:-`表示左对齐
 - `-:`表示右对齐
 - `:-:`表示中间对齐

举例：

```markdown
|左对齐|右对齐|中间对齐|
|:---|---:|:----:|
|单元格|单元格|单元格|
|单元格|单元格|单元格|
```

效果：

| 左对齐 | 右对齐 | 中间对齐 |
| :---- - |  - ----: | :------: |
| 单元格 | 单元格 | 单元格 |
| 单元格 |单元格 | 单元格 |

#### 高级表格[^ 3]

由于Markdown只支持最基本格式的表格，因此需要使用到一些高级表格功能，比如合并单元格的时候，就需要使用Html的方式构建表格，语法如下：

|  标签  |   描述   |
| :----------: | :------------------: |
| `<table>` |  定义表格  |
| `<th>` | 定义表格的表头 |
| `<tr>` |  定义表格的行  |
| `<td>` |  定义表格单元  |
| `<caption>` |  定义表格标题  |
| `<colgroup>` | 定义表格列的组 |
| `<col>` | 定义用于表格列的属性 |
| `<thread>` | 定义表格的页眉 |
| `<tbody>` | 定义表格的主体 |
| `<tfool>` | 定义表格的页脚 |

<img src="https://www.runoob.com/wp-content/uploads/2014/08/table-thead-tbody-tfoot.png" alt="runoob example" style="zoom:120%;" />

##### (1) 基本语法

表格由 `<table>` 标签来定义。每个表格均有若干行（由 `<tr> `标签定义），每行被分割为若干单元格（由 `<td>` 标签定义）。字母 td 指表格数据（table data），即数据单元格的内容。数据单元格可以包含文本、图片、列表、段落、表单、水平线、表格等等。

例：

```html
<table border="1">
 <tr>
  <td>row 1, cell 1</td>
  <td>row 1, cell 2</td>
 </tr>
 <tr>
  <td>row 2, cell 1</td>
  <td>row 2, cell 2</td>
 </tr>
</table>
```

<table border="1">
 <tr>
  <td>row 1, cell 1</td>
  <td>row 1, cell 2</td>
 </tr>
 <tr>
  <td>row 2, cell 1</td>
  <td>row 2, cell 2</td>
 </tr>
</table>

`<table>` 常用属性：

```
border="1" 表格边框的宽度
bordercolor="#fff" 表格边框的颜色
cellspacing="5" 单元格之间的间距
width="500" 表格的总宽度
height="100" 表格的总高度
align="right" 表格整体对齐方式 (参数有 left、center、right)
bgcolor="#fff" 表格整体的背景色
```

`<tr>` 常用属性：

```
bgcolor="#fff" 行的颜色
align="right" 行内文字的水平对齐方式 (参数有left、center、right)
valign="top"  行内文字的垂直对齐方式 (参数有top、middle、bottom)
```

`<td>`、`<th>` 标签的常用属性:

```
width="500" 单元格的宽度，设置后对当前一列的单元格都有影响
height="100" 单元格的高度，设置后对当前一行的单元格都有影响
bgcolor="fff" 单元格的背景色
align="right" 单元格文字的水平对齐方式 (参数left、center、right)
rowspan="3" 合并垂直水平方向的单元格
colspan="3" 合并水平方向单元格
valign="top" 单元格文字的垂直对齐方式 (参数middle、bottom、top) 
```

例：HTML 表格和边框属性：

如果不定义边框属性，表格将不显示边框。有时这很有用，但是大多数时候，我们希望显示边框。

在 `table` 的开始时候可以使用 `border` 来规定边框的大小

例：

```html
<table border="1">
 <tr>
  <td>Row 1, cell 1</td>
  <td>Row 1, cell 2</td>
 </tr>
</table>
```

<table border="1">
 <tr>
  <td>Row 1, cell 1</td>
  <td>Row 1, cell 2</td>
 </tr>
</table>

```html
<table border="5">
 <tr>
  <td>Row 1, cell 1</td>
  <td>Row 1, cell 2</td>
 </tr>
</table>
```

<table border="5">
 <tr>
  <td>Row 1, cell 1</td>
  <td>Row 1, cell 2</td>
 </tr>
</table>

##### (2) HTML 表格表头

表格的表头使用` <th> `标签进行定义。大多数浏览器会把表头显示为粗体居中的文本：

例：

```html
<table border="1">
 <tr>
  <th>Header 1</th>
  <th>Header 2</th>
 </tr>
 <tr>
  <td>row 1, cell 1</td>
  <td>row 1, cell 2</td>
 </tr>
 <tr>
  <td>row 2, cell 1</td>
  <td>row 2, cell 2</td>
 </tr>
</table>
```

<table border="1">
 <tr>
  <th>Header 1</th>
  <th>Header 2</th>
 </tr>
 <tr>
  <td>row 1, cell 1</td>
  <td>row 1, cell 2</td>
 </tr>
 <tr>
  <td>row 2, cell 1</td>
  <td>row 2, cell 2</td>
 </tr>
</table>

##### (3) 表格的标题

例：

```html
<table border="1">
 <caption>Monthly savings</caption>
 <tr>
 <th>Month</th>
 <th>Savings</th>
 </tr>
 <tr>
 <td>January</td>
 <td>$100</td>
 </tr>
 <tr>
 <td>February</td>
 <td>$50</td>
 </tr>
</table>
```

<table border="1">
 <caption>Monthly savings</caption>
 <tr>
 <th>Month</th>
 <th>Savings</th>
 </tr>
 <tr>
 <td>January</td>
 <td>$100</td>
 </tr>
 <tr>
 <td>February</td>
 <td>$50</td>
 </tr>
</table>

##### (4) 特殊操作

###### 表格中的空单元格

在一些浏览器中，没有内容的表格单元显示得不太好。如果某个单元格是空的（没有内容），浏览器可能无法显示出这个单元格的边框。为了避免这种情况，在空单元格中添加一个空格占位符 `%nbsp;` ，就可以将边框显示出来。

```html
<table border="1">
 <tr>
  <td>row 1, cell 1</td>
  <td>row 1, cell 2</td>
 </tr>
 <tr>
  <td>&nbsp;</td>
  <td>row 2, cell 2</td>
 </tr>
</table>
```

<table border="1">
 <tr>
  <td>row 1, cell 1</td>
  <td>row 1, cell 2</td>
 </tr>
 <tr>
  <td>&nbsp;</td>
  <td>row 2, cell 2</td>
 </tr>
</table>

###### 合并单元格

合并单元格的时候需要使用到`<td>`、`<th>` 标签的 `rowspan` 和 `colspan` 属性

例：

```html
<table border="1">
<tr>
 <th>姓名</th>
 <th colspan="2">电话</th>
</tr>
<tr>
 <td>Bill Gates</td>
 <td>555 77 854</td>
 <td>555 77 855</td>
</tr>
</table>
```

<table border="1">
 <tr>
  <th>姓名</th>
  <th colspan="2">电话</th>
 </tr>
 <tr>
  <td>Bill Gates</td>
  <td>555 77 854</td>
  <td>555 77 855</td>
 </tr>
</table>

```html
<table border="1">
 <tr>
  <th>姓名</th>
  <td>Bill Gates</td>
 </tr>
 <tr>
  <th rowspan="2">电话</th>
  <td>555 77 854</td>
 </tr>
 <tr>
  <td>555 77 855</td>
 </tr>
</table>
```

<table border="1">
 <tr>
  <th>姓名</th>
  <td>Bill Gates</td>
 </tr>
 <tr>
  <th rowspan="2">电话</th>
  <td>555 77 854</td>
 </tr>
 <tr>
  <td>555 77 855</td>
 </tr>
</table>



### 9. 公式

#### 公式代码

Typora 原生支持 LaTeX 语法，你有两种方式输入 LaTeX 风格的数学公式：

1. **行内公式（inline）：**用 `$...$` 括起公式，公式会出现在行内。
2. **块间公式（display）：**用 `$$...$$` 括起公式（注意 `$$` 后需要换行），公式会默认显示在行中间。
 + 如果要在行间公式内换行，在换行的位置使用 `\\`

举例：

```markdown
$\alpha + \beta = 1$

$$
\alpha + \beta = 1 \\
\gamma + \varepsilon = 2
$$
```

效果：

$\alpha + \beta = 1$

$$
\alpha + \beta = 1 \\
\gamma + \varepsilon = 2
$$

#### 上下标

在Typora中，可以用一对`~`将下标括起来，如：`H~2~O`表示H~2~O

同样，我们也可以用一对`^`将上标括起来，如：`X^2^` 表示X^2^

上下标可在偏好设置  - -> Markdown扩展语法中设置。

使用`html`也可以进行上下标的编辑：

```html
Html上标：ABC<sup>上浮内容</sup>
Html下标：ABC<sub>下浮内容</sub>
```

效果：

ABC<sup>上浮内容</sup>

ABC<sub>下浮内容</sub>

#### 公式符号

Typora支持KaTeX符号，可以在这里在线查阅

1. [KaTeX Functions](https://katex.org/docs/supported.html)
2. [KaTeX Tables](https://katex.org/docs/support_table.html)

### 10. HTML: 插入图片、字体格式、对齐格式

#### 字体颜色与大小

我们可以使用`<font> </font>`标签来改变字体的颜色及大小，如：

+ Color 支持 RGB

```markdown
<font size=3 color="red">字体颜色为红色，大小为3</font>

<font size=4 color="blue">字体颜色为蓝色，大小为4</font>

<font size=6 color="violet">字体颜色为紫罗兰，大小为6</font>

```

效果：

<font size=3 color="red">字体颜色为红色，大小为3</font>

<font size=4 color="blue">字体颜色为蓝色，大小为4</font>

<font size=6 color="violet">字体颜色为紫罗兰，大小为6</font>

当然也可以单独修改标签：

```markdown
<font size = 6>字体大小为6</font>

<font color = "66CCFF">字体颜色为天依蓝</font>
```

效果：

<font size = 6>字体大小为6</font>

<font color = "66CCFF">字体颜色为天依蓝</font>

#### 对齐方式

我们可以改变字体的对齐方式，用标签`<p> </p>`加上属性`align`，如：

```marldown
<p align="left">左对齐</p>
<p align="center">中间对齐</p>
<p align="right">右对齐</p>
```

效果：

<p align="left">左对齐</p>
<p align="center">中间对齐</p>
<p align="right">右对齐</p>

或者是：

```markdown
<center> 中间对齐</center>
```

效果：

<center>中间对齐</center>

#### 图像

##### (1) 插入图片

可以通过标签 `<img src=url />` 来插入图片

```markdown
<img src="url" />

<img src="本地相对或绝对路径" />
```

举例：

```markdown
<img src="url">
```

<img src="https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Others/Fluid/Sad%20and%20Cry.jpg">

##### (2) 更改图片大小、缩放图片

可以改变`<img>`标签的属性，来改变图片的大小

```markdown
<img src="url" width=300 height=200>
```

<img src="https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Others/Fluid/Sad%20and%20Cry.jpg" width=300 height=300>

缩放图片的时候可以更改代码，也可以通过鼠标右键点击图片，进行设置：

```markdown
<img src="url" style="zoom: 50%;">
```

<img src="https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Others/Fluid/Sad%20and%20Cry.jpg" style="zoom:50%;" />

在Typora当中，图片一般是默认居中显示的，不同的主题图片默认排版可能不同。（因为这个网站使用的是Hexo的Fluid主题，图片是默认靠左显示。）

可以通过HTML标签改变图片的位置，如：

```markdown
图片在左边
<img src="url" width=300 height=300 style="float:left"/>

图片在右边
<img src="url" width=300 height=300 style="float:right"/>
```

效果：

<img src="https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Others/Fluid/Sad%20and%20Cry.jpg" width=100 height=100 style="float:left"/>









<img src="https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Others/Fluid/Sad%20and%20Cry.jpg" width=100 height=100 style="float:right"/>

<br/>

---



## 其他用法

### 1. emoji

在 Typora 中我们可以使用`:emoji:`的语法来插入表情，比如（网页中可能不会显示）：

```markdown
:happy:
```

:happy:

### 2. 插入目录

在 Typora 中插入目录的时候，可以通过输入`[toc]` 或 `[TOC]` 实现

```markdown
[toc] 或 [TOC]
```

### References

[^ 1 ]: https://baike.baidu.com/item/markdown
[^ 2 ]: https://sspai.com/post/54912
[^ 3 ]: https://www.runoob.com/html/html-tables.html

1. https://baike.baidu.com/item/markdown
2. https://sspai.com/post/54912
3. https://www.runoob.com/html/html-tables.html

