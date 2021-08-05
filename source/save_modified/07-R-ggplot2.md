---
title: 07. R < - ggplot2语法概述及基本图片操作
tags:
  -  R
  -  Statistics
  -  速查
categories:
  -  软件使用总结
  -  R
author: 向海
index_img: >-
 https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/R/20200810-photo_2020-07-17_19-17-35.jpg
banner_img: >-
 https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/R/20200810-photo_2020-07-09_20-05-25.jpg
top: false
math: true
comments: true
hide: false
excerpt: ggplot2包的基本语法及相关参数
abbrlink: b93b47fd
date: 2020-08-09 17:47:20
updated: 2020-08-10 16:46:20
---

`ggplot2`包基于一种全面的图形“语法”，提供了一种全新的图形创建方法。

`ggplot2`包实现了一个在R中基于全面一致的语法创建图形时的系统。这提供了在R中画图时经常缺乏的图形创造的一致性并允许我们创建具有创新性和新颖性的图表类型。

# 一、ggplot2语法介绍

在`ggplot2`中，图是采用（`+`号）串联起来并创建的。每个函数修改属于自己的部分。

例：

```R
ggplot(data=mtcars, aes(x=wt, y=mpg)) + 
	geom_point() + 
	labs(title="Automobile Data", x="Weight", y="Miles Per Gallon")
```

<img src="https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/R/ggplot2/image-20200809183055924.png" alt="image-20200809183055924" style="zoom:67%;" />

在这个例子当中：

+ `ggplot()`初始化图形并且指顶要用到的数据来源（`mtcars`）和变量（`wt`、`mpg`）
+ `aes()`函数的功能是指定每个变量扮演的角色（`aes`代表aesthetics，即如何用视觉形式呈现信息）。在这里，变量`wt`的值映射到沿*x*轴的距离，变量`mpg`的值映射到沿*y*轴的距离
+ `geom`向图形中添加了几何对象
+ `lab()`函数是可选的，添加了注释（轴标签和标题）。

## 用几何函数指定图的类型

`ggplot()`函数设置图形但没有自己的视觉输出。使用一个或多个几何函数向图中添加了几何对象（简写为`geom`），包括点、线、条、箱线图和阴影区域:

| 函数    | 添加  | 选项（参数）         |
|  - -------------- - |  - ------ - |  - ------------------------------------------ - |
| geom_bar()  | 条形图 | color、fill、alpha       |
| geom_boxplot() | 箱线图 | color、fill、alpha、notch、width    |
| geom_density() | 密度图 | color、fill、alpha、linetype     |
| geom_histogram() | 直方图 | color、fill、alpha、linetype、binwidth  |
| geom_hline()  | 水平线 | color、alpha、linetype、size     |
| geom_jitter() | 抖动点 | color、size、alpha、shape     |
| geom_line()  | 线图  | colorvalpha、linetype、size     |
| geom_point()  | 散点图 | color、alpha、shape、size     |
| geom_rug()  | 地毯图 | color、side         |
| geom_smooth() | 拟合曲线 | method、formula、color、fill、linetype、size |
| geom_text()  | 文字注解 | 很多           |
| geom_violin() | 小提琴图 | color、fill、alpha、linetype     |
| geom_vline()  | 垂线  | color、alpha、linetype、size     |

常见参数：

| 选项（参数） | 描述               |
|  - ---------- - |  - ---------------------------------------------------------- - |
| color  | 对点、线和填充区域的边界进行着色        |
| fill   | 对填充区域着色，如条形和密度区域        |
| alpha  | 颜色的透明度，从0（完全透明）到1（不透明）。     |
| linetype  | 图案的线条（1=实线，2=虚线，3=点，4=点破折号，5=长破折号，6=双破折号） |
| size   | 点的尺寸和线的宽度           |
| shape  | 点的形状（和pch一样，0=开放的方形，1=开放的圆形，2=开放的三角形，等等） |
| position  | 绘制诸如条形图和点等对象的位置。<br />对条形图来说，`"dodge"`将分组条形图并排，`"stacked"`堆叠分组条形图，`"fill"`垂直地堆叠分组条形图并规范其高度相等。<br />对于点来说，`"jitter"`减少点重叠 |
| binwidth  | 直方图的宽度             |
| notch  | 表示方块图是否应为缺口（TRUE/FALSE）       |
| sides  | 地毯图的安置（`"b"`=底部，`"l"`=左部，`"t"`=顶部，`"r"`=右部，`"bl"`=左下部，等等） |
| width  | 箱线图的宽度             |

例，以`car`包中的`Salaries`数据集作为示例数据集：

```R
# 展示数据集Salaries
> library(car)
载入需要的程辑包：carData
> head(Salaries)
  rank discipline yrs.since.phd yrs.service sex salary
1  Prof   B   19   18 Male 139750
2  Prof   B   20   16 Male 173200
3 AsstProf   B    4   3 Male 79750
4  Prof   B   45   39 Male 115000
5  Prof   B   40   41 Male 141500
6 AssocProf   B    6   6 Male 97000

# 绘图
> library(ggplot2) 
> ggplot(Salaries, aes(x=rank, y=salary)) + 
  geom_boxplot(fill="cornflowerblue", 
     color="black", notch=TRUE) + 
  geom_point(position="jitter", color="blue", alpha=.5) + 
  geom_rug(side="l", color="black")
```

<img src="https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/R/ggplot2/image-20200809184749532.png" alt="image-20200809184749532" style="zoom:100%;" />
## 数据分组

为了理解数据，在一个图中画出两个或更多组的观察值通常是很有帮助的。在R中，组通常用分类变量的水平（因子）来定义。

分组是通过`ggplot2`图将一个或多个带有诸如形状、颜色、填充、尺寸和线类型的视觉特征的分组变量来完成的。`ggplot()`声明中的`aes()`函数负责分配变量（图形的视觉特征）。

根据不同的图像类型，分组的方式不尽相同，分组的方式可能并不会非常明显地定义出来。

这部分仍然使用`car`包中的`Salaries`来进行演示。

例1，根据`Salaries$Rank`进行分组：

```R
> library(car)
> head(Salaries)
  rank discipline yrs.since.phd yrs.service sex salary
1  Prof   B   19   18 Male 139750
2  Prof   B   20   16 Male 173200
3 AsstProf   B    4   3 Male 79750
4  Prof   B   45   39 Male 115000
5  Prof   B   40   41 Male 141500
6 AssocProf   B    6   6 Male 97000
> ggplot(data=Salaries, aes(x=salary, fill=rank)) + 
	geom_density(alpha=.3)
```

<img src="https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/R/ggplot2/image-20200809190706605.png" alt="image-20200809190706605" style="zoom:100%;" />
这其中的分组并不是非常明显地定义出来，而是以填充颜色的方式（`fill=rank`）进行表示的。即按照`Salaries$rank`的类型进行颜色填充，因为原数据集中`rank`有三种类型（AsstProf，AssoProf，Prof），因此需要填充三种颜色，从而`ggplot`自然地将数据分为了三组，因为要填充三种颜色。

例2，散点图：

```R
> head(Salaries)
  rank discipline yrs.since.phd yrs.service sex salary
1  Prof   B   19   18 Male 139750
2  Prof   B   20   16 Male 173200
3 AsstProf   B    4   3 Male 79750
4  Prof   B   45   39 Male 115000
5  Prof   B   40   41 Male 141500
6 AssocProf   B    6   6 Male 97000
> ggplot(Salaries, aes(x=yrs.since.phd, y=salary, 
      color=rank, shape=sex)) + 
		geom_point()
```

<img src="https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/R/ggplot2/image-20200809191119409.png" alt="image-20200809191119409" style="zoom:100%;" />
这个例子当中按照color和shape对原数据分了两次组：原数据集中`rank`有三种类型（AsstProf，AssoProf，Prof），`sex`有两种类型（Female, Male），因此自动划分了各组的color和shape。

例3，条形图：

```R
> head(Salaries)
  rank discipline yrs.since.phd yrs.service sex salary
1  Prof   B   19   18 Male 139750
2  Prof   B   20   16 Male 173200
3 AsstProf   B    4   3 Male 79750
4  Prof   B   45   39 Male 115000
5  Prof   B   40   41 Male 141500
6 AssocProf   B    6   6 Male 97000
> ggplot(Salaries, aes(x=rank, fill=sex)) + 
	geom_bar(position="stack") + labs(title='position="stack"') 

> ggplot(Salaries, aes(x=rank, fill=sex)) + 
	geom_bar(position="dodge") + labs(title='position="dodge"') 

> ggplot(Salaries, aes(x=rank, fill=sex)) + 
	geom_bar(position="fill") + labs(title='position="fill"')
```

<img src="https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/R/ggplot2/image-20200809191951950.png" alt="image-20200809191951950" style="zoom:100%;" />
<center><font color="708090" size="2">直接用了课本上的图....</font></center>

## 刻面

如果组在图中并排出现而不是重叠为单一的图形，关系就是清晰的。我们可以使用`facet_wrap()`函数和`facet_grid()`函数创建网格图形（在`ggplot2`中也称刻面图）。

```R
# 使用格式
facet_wrap(
 facets,
 nrow = NULL,
 ncol = NULL,
 scales = "fixed",
 shrink = TRUE,
 labeller = "label_value",
 as.table = TRUE,
 switch = NULL,
 drop = TRUE,
 dir = "h",
 strip.position = "top"
)

facet_grid(
 rows = NULL,
 cols = NULL,
 scales = "fixed",
 space = "fixed",
 shrink = TRUE,
 labeller = "label_value",
 as.table = TRUE,
 switch = NULL,
 drop = TRUE,
 margins = FALSE,
 facets = NULL
)
```

| 语法      | 结果               |
|  - ----------------------- - |  - ---------------------------------------------------------- - |
| facet_wrap(~var, ncol=n) | 将每个`var`水平排列成*n*列的独立图       |
| facet_wrap(~var, nrow=n) | 将每个`var`水平排列成*n*行的独立图       |
| facet_grid(rowvar~colvar) | `rowvar`和`colvar`组合的独立图，其中`rowvar`表示行，`colvar`表示列 |
| facet_grid(rowvar~.)  | 每个`rowvar`水平的独立图，配置成一个单列      |
| facet_grid(.~colvar)  | 每个`colvar`水平的独立图，配置成一个单行      |

这部分的演示使用`lattice`包中的`singer`数据集和`car`包中的`Salaries`来进行：

```R
> library(lattice)
> head(singer)
 height voice.part
1  64 Soprano 1
2  62 Soprano 1
3  66 Soprano 1
4  65 Soprano 1
5  60 Soprano 1
6  61 Soprano 1
> library(car)
> head(Salaries)
  rank discipline yrs.since.phd yrs.service sex salary
1  Prof   B   19   18 Male 139750
2  Prof   B   20   16 Male 173200
3 AsstProf   B    4   3 Male 79750
4  Prof   B   45   39 Male 115000
5  Prof   B   40   41 Male 141500
6 AssocProf   B    6   6 Male 97000
```

例1，按照不同类型进行刻面：

```R
> library(ggplot2) 
> ggplot(data=singer, aes(x=height)) + 
  geom_histogram() + 
  facet_wrap(~voice.part, nrow=4)
# `stat_bin()` using `bins = 30`. Pick better value with `binwidth`.
```

<img src="https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/R/ggplot2/image-20200809192859742.png" alt="image-20200809192859742" style="zoom:100%;" />
得到的图展示了各声部歌手身高的分布。<u>把八个分布分为并排的小图可以方便比较</u>。

例2，刻面+分组：

```R
> ggplot(Salaries, aes(x=yrs.since.phd, y=salary, color=rank, 
      shape=rank)) + geom_point() + 
		facet_grid(.~sex)
```

<img src="https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/R/ggplot2/image-20200809193252739.png" alt="image-20200809193252739" style="zoom:100%;" />
## 添加光滑曲线

`ggplot2`包包含了一系列计算统计的函数来加到图形中。这些包括分级数据和计算密度、轮廓和分位数功能等。

我们可以使用`geom_smooth()`函数来添加一系列的平滑曲线和和置信区域。相关参数如下：

| 选项（参数） | 描述               |
|  - ---------- - |  - ---------------------------------------------------------- - |
| method=  | 使用的平滑函数。允许的值包括`lm`、`glm`、`smooth`、`rlm`和`gam`，分别对应线性、广义线性、loess 健壮线性和广义相加模型。`smooth`是默认值 |
| formula=  | 在光滑函数中使用的公式。例子包括`y~x`（默认），`y~log(x)`, `y~poly(x,n)`表示n次多项式拟合`y~ns(x,n)`表示一个具有n个自由度的样条拟合 |
| se   | 绘制置信区间（TRUE/FALSE）。默认为TRUE      |
| level  | 使用的置信区间水平（默认为95%）        |
| fullrange | 指定拟合应涵盖全图（TRUE）或仅仅是数据（FALSE）。 默认为FALSE |

这部分的演示使用`car`包中的`Salaries`来进行演示。

```R
> library(car)
> head(Salaries)
  rank discipline yrs.since.phd yrs.service sex salary
1  Prof   B   19   18 Male 139750
2  Prof   B   20   16 Male 173200
3 AsstProf   B    4   3 Male 79750
4  Prof   B   45   39 Male 115000
5  Prof   B   40   41 Male 141500
6 AssocProf   B    6   6 Male 97000
```

例1，使用带有95%置信区间的非参数光滑曲线（loess）。

```R
> library(ggplot2) 
> ggplot(data=Salaries, aes(x=yrs.since.phd, y=salary)) + 
		geom_smooth() + 
		geom_point()
```

<img src="https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/R/ggplot2/image-20200809194744777.png" alt="image-20200809194744777" style="zoom:100%;" />
例2，二次多项式回归：

```R
> ggplot(data=Salaries, aes(x=yrs.since.phd, y=salary, 
       linetype=sex, shape=sex, color=sex)) + 
		geom_smooth(method=lm, formula=y~poly(x,2), 
     se=FALSE, size=1) + 
		geom_point(size=2)
```

<img src="https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/R/ggplot2/image-20200809195048205.png" alt="image-20200809195048205" style="zoom:100%;" />
# 二、对于图片的操作

这部分主要涉及修改图片的外观

在R的`base`绘图函数当中，可以通过`par()`来修改外观，对于`ggplot2`并不通用。

## 标签

标签指的是对图像上一些地方进行标注，例如添加坐标轴的标题、添加图例的标题、添加图片的标题等等。

对于标签的添加需要使用到`lab()`函数，这个函数负责的工作是将目标添加上去，对目标格式的修改，如修改颜色、字体等需要使用到`theme()`函数。

Usage:

```R
labs(
 ...,
 title = waiver(),
 subtitle = waiver(),
 caption = waiver(),
 tag = waiver()
)

xlab(label)

ylab(label)

ggtitle(label, subtitle = waiver())
```

| 参数  | 描述               |
|  - -------- - |  - ---------------------------------------------------------- - |
| `title` | The text for the title.          |
| `subtitle` | The text for the subtitle for the plot which will be displayed below the title. |
| `caption` | The text for the caption which will be displayed in the bottom-right of the plot by default. |
| `x`  | The title of x axis           |
| `y`  | The title of y axis           |
| `tag`  | The text for the tag label which will be displayed at the top-left of the plot by default. |
| `label` | The title of the respective axis (for `xlab()` or `ylab()`) or of the plot (for `ggtitle()`). |

例：为某个图片添加各种标题：

```R
> ggplot(Salaries, aes(x=rank, y=salary, fill=sex))+
		geom_boxplot()+
		labs(title = "The Main title", 
    subtitle = "The Subtitle",
    caption = "The Caption",
    tag = "The tag",
    x="X axis",
    y="Y axis")
```

<img src="https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/R/ggplot2/image-20200810155620813.png" alt="image-20200810155620813" style="zoom:100%;" />
## 刻度线及刻度线标签

`ggplot2`包会在创建图时自动创建刻度线、刻度标记标签和坐标轴标签。它们往往看起来不错，但是有时我们需要在更大程度上控制它们的外观。

控制坐标轴和刻度线外观的函数:

| 函数           | 选项（参数）             |
|  - -------------------------------------------- - |  - ---------------------------------------------------------- - |
| `scale_x_continuous()`和`scale_y_continuous()` | breaks=指定刻度标记，labels=指定刻度标记标签，limits=控制要展示的值的范围 |
| `scale_x_discrete()`和`scale_y_discrete()`  | breaks=对因子的水平进行放置和排序，labels=指定这些水平的标签，limits=表示哪些水平应该展示 |
| `coord_flip()`         | 颠倒*x*轴和*y*轴            |

使用`car`包中的`Salaries`来进行演示:

```R
> library(car)
> head(Salaries)
  rank discipline yrs.since.phd yrs.service sex salary
1  Prof   B   19   18 Male 139750
2  Prof   B   20   16 Male 173200
3 AsstProf   B    4   3 Male 79750
4  Prof   B   45   39 Male 115000
5  Prof   B   40   41 Male 141500
6 AssocProf   B    6   6 Male 97000
```

```R
> library(ggplot2) 
> ggplot(data=Salaries, aes(x=rank, y=salary, fill=sex)) + 
		geom_boxplot() + 
		scale_x_discrete(breaks=c("AsstProf", "AssocProf", "Prof"), 
       labels=c("Assistant\nProfessor", 
         "Associate\nProfessor", 
         "Full\nProfessor")) + 
		scale_y_continuous(breaks=c(50000, 100000, 150000, 200000), 
      labels=c("$50K", "$100K", "$150K", "$200K")) + 
		labs(title="Faculty Salary by Rank and Sex", x="", y="")
```

<img src="https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/R/ggplot2/image-20200809195727203.png" alt="image-20200809195727203" style="zoom:100%;" />
## 图例

图例是指出如何用颜色、形状、尺寸等视觉特性表示数据特征的指南。`ggplot2`包能自动生成图例，而且在很多时候能够满足我们的需求；但是在其他时候，我们可能要对其进行自定义。图例的**标题**和**位置**是最常用的定制特征。

当更改图例的标题时，必须考虑图例是否基于颜色、填充、尺寸、形状或它们的组合。

+ 图例标题的位置由`theme()`函数中的`legend.position`选项控制。可能的值包括`"left"`、`"top"`、`"right"`（默认值）和`"bottom"`。
 + 如果想删除图例，可以使用`legend.position="none"`

这部分使用`car`包的`Salaries`数据集进行演示：

```R
> library(car)
载入需要的程辑包：carData
> head(Salaries)
  rank discipline yrs.since.phd yrs.service sex salary
1  Prof   B   19   18 Male 139750
2  Prof   B   20   16 Male 173200
3 AsstProf   B    4   3 Male 79750
4  Prof   B   45   39 Male 115000
5  Prof   B   40   41 Male 141500
6 AssocProf   B    6   6 Male 97000
```

```R
> library(ggplot2)
> ggplot(data=Salaries, aes(x=rank, y=salary, fill=sex)) + 
		geom_boxplot() + 
		scale_x_discrete(breaks=c("AsstProf", "AssocProf", "Prof"),
       labels=c("Assistant\nProfessor","Associate\nProfessor", 
         "Full\nProfessor")) + 
		scale_y_continuous(breaks=c(50000, 100000, 150000, 200000), 
       labels=c("$50K", "$100K", "$150K", "$200K")) + 
		labs(title="Faculty Salary by Rank and Gender", 
    x="", y="", fill="Gender") + 
		# 图例的左上角是距离左侧边缘10%和底部边缘80%的部分
		theme(legend.position=c(.1,.8))
```

<img src="https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/R/ggplot2/image-20200809213743609.png" alt="image-20200809213743609" style="zoom:100%;" />
## 标尺

### 1. 标尺添加

`ggplot2`包使用标尺把数据空间的观察值映射到可视化的空间中。标尺既可以应用到连续的变量，也可以应用到离散的变量

例1，使用内置的`mtcars`数据集进行演示：

```R
> head(mtcars)
     mpg cyl disp hp drat wt qsec vs am gear carb
Mazda RX4   21.0 6 160 110 3.90 2.620 16.46 0 1 4 4
Mazda RX4 Wag  21.0 6 160 110 3.90 2.875 17.02 0 1 4 4
Datsun 710  22.8 4 108 93 3.85 2.320 18.61 1 1 4 1
Hornet 4 Drive 21.4 6 258 110 3.08 3.215 19.44 1 0 3 1
Hornet Sportabout 18.7 8 360 175 3.15 3.440 17.02 0 0 3 2
Valiant   18.1 6 225 105 2.76 3.460 20.22 1 0 3 1
```

```R
> ggplot(mtcars, aes(x=wt, y=mpg, size=disp)) + 
		geom_point(shape=21, color="black", fill="cornsilk") + 
		labs(x="Weight", y="Miles Per Gallon", 
    title="Bubble Chart", size="Engine\nDisplacement")
```

<img src="https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/R/ggplot2/image-20200809214120500.png" alt="image-20200809214120500" style="zoom:100%;" />
+ `aes()`函数的参数`size=disp`生成连续型变量`disp`（发动机排量）的标尺，并使用它来控制点的尺寸

### 2. 将标尺与更多因素关联

例2，使用标尺将带有因子水平的视觉线索（如颜色、形状、线条类型、尺寸和透明度）关联起来，使用`car`包的`Salaries`数据集进行演示：

```R
> library(car)
载入需要的程辑包：carData
> head(Salaries)
  rank discipline yrs.since.phd yrs.service sex salary
1  Prof   B   19   18 Male 139750
2  Prof   B   20   16 Male 173200
3 AsstProf   B    4   3 Male 79750
4  Prof   B   45   39 Male 115000
5  Prof   B   40   41 Male 141500
6 AssocProf   B    6   6 Male 97000
```

```R
> ggplot(data=Salaries, aes(x=yrs.since.phd, y=salary, color=rank)) + 
		scale_color_manual(values=c("orange", "olivedrab", "navy")) + 
		geom_point(size=2)
```

<img src="https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/R/ggplot2/image-20200809214351844.png" alt="image-20200809214351844" style="zoom:100%;" />
有一些预设好的颜色集，通用与各种场合：

可以通过`scale_color_brewer()`和`scale_fill_brewer()`函数来预先指定分得清的颜色集。

```R
> ggplot(data=Salaries, aes(x=yrs.since.phd, y=salary, color=rank)) + 
		scale_color_brewer(palette="Set1") + geom_point(size=2)
```

其它的颜色集可以通过`RColorBrewer`包进行可视化选择：

```R
> library(RColorBrewer) 
> display.brewer.all()
```

<img src="https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/R/ggplot2/image-20200809214910619.png" alt="image-20200809214910619" style="zoom:100%;" />
关于颜色相关的函数使用方法如下，通过指定`palette`来选取预设颜色集：

```R
scale_colour_brewer(
 ...,
 type = "seq",
 palette = 1,
 direction = 1,
 aesthetics = "colour"
)

scale_fill_brewer(
 ...,
 type = "seq",
 palette = 1,
 direction = 1,
 aesthetics = "fill"
)

scale_colour_distiller(
 ...,
 type = "seq",
 palette = 1,
 direction =  - 1,
 values = NULL,
 space = "Lab",
 na.value = "grey50",
 guide = "colourbar",
 aesthetics = "colour"
)

scale_fill_distiller(
 ...,
 type = "seq",
 palette = 1,
 direction =  - 1,
 values = NULL,
 space = "Lab",
 na.value = "grey50",
 guide = "colourbar",
 aesthetics = "fill"
)

scale_colour_fermenter(
 ...,
 type = "seq",
 palette = 1,
 direction =  - 1,
 na.value = "grey50",
 guide = "coloursteps",
 aesthetics = "colour"
)

scale_fill_fermenter(
 ...,
 type = "seq",
 palette = 1,
 direction =  - 1,
 na.value = "grey50",
 guide = "coloursteps",
 aesthetics = "fill"
)
```

## theme()

`theme()`函数中的选项可以让我们调整字体、背景、颜色和网格线等。主题可以使用一次，也可以保存起来应用到多个图中。

`theme()`函数并不负责将某些元素添加到图像当中，例如它并不为图像添加标题。`theme()`函数制定了某些元素，例如坐标轴标题，字体，背景等元素该如何添加到图像当中去，即<u>规定这些元素的格式（属性）</u>。

### 1. 相关参数

`theme()`函数的相关参数：

| 参数     | 设置内容      | 继承自        |
|  - ------------------ - |  - ---------------------------- - |  - ---------------------------------- - |
| line     | 所有线属性      |          |
| rect     | 所有矩形区域属性    |          |
| text     | 所有文本相关属性    |          |
| title    | 所有标题属性     |          |
| axis.title   | 坐标轴标题      | text         |
| axis.title.x   | x轴属性      | axis.title       |
| axis.title.y   | y轴属性      | axis.title       |
| axis.text   | 坐标轴刻度标签属性    | text         |
| axis.text.x   | 属性和继承和前面类似，不再重复 |          |
| axis.text.y   |        |          |
| axis.ticks   | 坐标轴刻度线     | line         |
| axis.ticks.x   |        |          |
| axis.ticks.y   |        |          |
| axis.ticks.length | 刻度线长度      |          |
| axis.ticks.margin | 刻度线和刻度标签之间的间距  |          |
| axis.line   | 坐标轴线      | line         |
| axis.line.x   |        |          |
| axis.line.y   |        |          |
| legend.background | 图例背景      | rect         |
| legend.margin  | 图例边界      |          |
| legend.key   | 图例符号      |          |
| legend.key.size  | 图例符号大小     |          |
| legend.key.height | 图例符号高度     |          |
| legend.key.width  | 图例符号宽度     |          |
| legend.text   | 图例文字标签     |          |
| legend.text.align | 图例文字标签对齐方式   | 0为左齐，1为右齐      |
| legend.title   | 图例标题      | text         |
| legend.title.align | 图例标题对齐方式    |          |
| legend.position  | 图例位置      | left, right, bottom, top, 两数字向量 |
| legend.direction  | 图例排列方向     | "horizontal" or "vertical"   |
| legend.justification | 居中方式      | center或两数字向量     |
| legend.box   | 多图例的排列方式    | "horizontal" or "vertical"   |
| legend.box.just  | 多图例居中方式     |          |
| panel.background  | 绘图区背景      | rect         |
| panel.border   | 绘图区边框      | rect         |
| panel.margin   | 分面绘图区之间的边距   |          |
| panel.grid   | 绘图区网格线     | line         |
| panel.grid.major  | 主网格线      |          |
| panel.grid.minor  | 次网格线      |          |
| panel.grid.major.x |        |          |
| panel.grid.major.y |        |          |
| panel.grid.minor.x |        |          |
| panel.grid.minor.y |        |          |
| plot.background  | 整个图形的背景     |          |
| plot.title   | 图形标题      |          |
| plot.margin   | 图形边距      | top, right, bottom, left    |
| strip.background  | 分面标签背景     | rect         |
| strip.text   | 分面标签文本     | text         |
| strip.text.x   |        |          |
| strip.text.y   |        |          |

### 2. 相关函数

#### margin()

Usage:

```R
margin(t = 0, r = 0, b = 0, l = 0, unit = "pt")
```

#### element_

与`theme()`函数相关的函数有：`element_line`，`element_rect`，`element_text`和`element_blank`

对各个函数的说明：

> In conjunction with the theme system, the element_ functions specify the display of how non-data components of the plot are drawn.
>
> 1. `element_blank`: draws nothing, and assigns no space.
> 2. `element_rect`: borders and backgrounds.
> 3. `element_line`: lines.
> 4. `element_text`: text.

```R
margin(t = 0, r = 0, b = 0, l = 0, unit = "pt")

element_blank()

element_rect(
 fill = NULL,
 colour = NULL,
 size = NULL,
 linetype = NULL,
 color = NULL,
 inherit.blank = FALSE
)

element_line(
 colour = NULL,
 size = NULL,
 linetype = NULL,
 lineend = NULL,
 color = NULL,
 arrow = NULL,
 inherit.blank = FALSE
)

element_text(
 family = NULL,
 face = NULL,
 colour = NULL,
 size = NULL,
 hjust = NULL,
 vjust = NULL,
 angle = NULL,
 lineheight = NULL,
 color = NULL,
 margin = NULL,
 debug = NULL,
 inherit.blank = FALSE
)

rel(x)
```

相关参数：

| 参数   | 描述               |
|  - ------------- - |  - ---------------------------------------------------------- - |
| `t, r, b, l` | Dimensions of each margin. (To remember order, think trouble). |
| `unit`   | Default units of dimensions. Defaults to "pt" so it can be most easily scaled with the text. |
| `fill`   | Fill colour.             |
| `colour, color` | Line/border colour. Color is an alias for colour.   |
| `linetype`  | Line type. An integer (0:8), a name (blank, solid, dashed, dotted, dotdash, longdash, twodash), or a string with an even number (up to eight) of hexadecimal digits which give the lengths in consecutive positions in the string. |
| `inherit.blank` | Should this element inherit the existence of an `element_blank` among its parents? If TRUE the existence of a blank element among its parents will cause this element to be blank as well. If FALSE any blank parent element will be ignored when calculating final element state. |
| `lineend`  | Line end Line end style (round, butt, square)    |
| `arrow`   | Arrow specification, as created by `grid::arrow()`   |
| `family`  | Font family             |
| `face`   | Font face ("plain", "italic", "bold", "bold.italic")   |
| `hjust`   | Horizontal justification (in [0, 1])       |
| `vjust`   | Vertical justification (in [0, 1])       |
| `angle`   | Angle (in [0, 360])           |
| `margin`  | Margins around the text. See `margin()` for more details. When creating a theme, the margins should be placed on the side of the text facing towards the center of the plot. |
| `debug`   | If TRUE, aids visual debugging by drawing a solid rectangle behind the complete text area, and a point where each label is anchored. |
| `x`    | A single number specifying size relative to parent element. |

#### grid::arrow()

Produces a description of what arrows to add to a line. The result can be passed to a function that draws a line, e.g., `grid.lines`.

Usage:

```R
arrow(angle = 30, length = unit(0.25, "inches"),
  ends = "last", type = "open")
```

| 参数  | 描述               |
|  - ------ - |  - ---------------------------------------------------------- - |
| `angle` | The angle of the arrow head in degrees (smaller numbers produce narrower, pointier arrows). Essentially describes the width of the arrow head. |
| `length` | A unit specifying the length of the arrow head (from tip to base). |
| `ends` | One of "last", "first", or "both", indicating which ends of the line to draw arrow heads. |
| `type` | One of "open" or "closed" indicating whether the arrow head should be a closed triangle. |

### 3. 演示实例

具体的函数使用方法如下，基本上来说就是`ggplot(...) + theme(...)`的方式：

```R
plot < - ggplot(mpg, aes(displ, hwy)) + geom_point()

plot + theme(
 panel.background = element_blank(),
 axis.text = element_blank()
)

plot + theme(
 axis.text = element_text(colour = "red", size = rel(1.5))
)

plot + theme(
 axis.line = element_line(arrow = arrow())
)

plot + theme(
 panel.background = element_rect(fill = "white"),
 plot.margin = margin(2, 2, 2, 2, "cm"),
 plot.background = element_rect(
 fill = "grey90",
 colour = "black",
 size = 1
 )
)
```

这部分的演示使用`car`包的`Salaries`数据集来进行：

```R
> library(car)
载入需要的程辑包：carData
> head(Salaries)
  rank discipline yrs.since.phd yrs.service sex salary
1  Prof   B   19   18 Male 139750
2  Prof   B   20   16 Male 173200
3 AsstProf   B    4   3 Male 79750
4  Prof   B   45   39 Male 115000
5  Prof   B   40   41 Male 141500
6 AssocProf   B    6   6 Male 97000
```

```R
> library(ggplot2) 
> mytheme < - theme(plot.title=element_text(face="bold.italic", 
           size="14", color="brown"), 
     axis.title=element_text(face="bold.italic", 
           size=10, color="brown"), 
     axis.text=element_text(face="bold", size=9, 
           color="darkblue"), 
     panel.background=element_rect(fill="white", 
            color="darkblue"), 
     panel.grid.major.y=element_line(color="grey", 
             linetype=1), 
     panel.grid.minor.y=element_line(color="grey", 
             linetype=2), 
     panel.grid.minor.x=element_blank(), 
     legend.position="top") 
> ggplot(Salaries, aes(x=rank, y=salary, fill=sex)) + 
		geom_boxplot() + 
		labs(title="Salary by Rank and Sex", x="Rank", y="Salary") + 
		mytheme
```

<img src="https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/R/ggplot2/image-20200810152825990.png" alt="image-20200810152825990" style="zoom:100%;" />
## 图像的组合：多重图

我们使用图形参数`mfrow`和基本函数`layout()`把两个或更多的基本图放到单个图形中。同样，这种方法在`ggplot2`包中不适用。将多个`ggplot2`包的图形放到单个图形中最简单的方式是使用`gridExtra`包中的`grid.arrange()`函数。

Usage：

```R
arrangeGrob(..., grobs = list(...), 
   layout_matrix, vp = NULL,
   name = "arrange", as.table = TRUE, 
   respect = FALSE, clip = "off",
   nrow = NULL, ncol = NULL, widths = NULL, 
   heights = NULL, top = NULL,
   bottom = NULL, left = NULL, 
   right = NULL, padding = unit(0.5, "line"))

grid.arrange(..., newpage = TRUE)

marrangeGrob(grobs, ..., ncol, nrow, 
    layout_matrix = matrix(seq_len(nrow * ncol), 
    nrow = nrow, ncol = ncol), 
    top = quote(paste("page", g, "of", npages)))
```

这部分的演示使用`car`包中的`Salaries`数据集：

```R
> library(car)
> head(Salaries)
  rank discipline yrs.since.phd yrs.service sex salary
1  Prof   B   19   18 Male 139750
2  Prof   B   20   16 Male 173200
3 AsstProf   B    4   3 Male 79750
4  Prof   B   45   39 Male 115000
5  Prof   B   40   41 Male 141500
6 AssocProf   B    6   6 Male 97000
```

```R
# 绘制三幅图像，并保存
> library(ggplot2) 
> p1 < - ggplot(data=Salaries, aes(x=rank)) + geom_bar() 
> p2 < - ggplot(data=Salaries, aes(x=sex)) + geom_bar() 
> p3 < - ggplot(data=Salaries, aes(x=yrs.since.phd, y=salary)) + geom_point() 

# 将三幅图像合并
> library(gridExtra) 
> grid.arrange(p1, p2, p3, ncol=3)
```

<img src="https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/R/ggplot2/image-20200810162036196.png" alt="image-20200810162036196" style="zoom:100%;" />
## 保存图像

可以使用R内置的保存方式对图像就进行保存，对于`ggplot2`创建的图形，可以使用`ggsave`实现更好地保存。

Usage：

```R
ggsave(
 filename,
 plot = last_plot(),
 device = NULL,
 path = NULL,
 scale = 1,
 width = NA,
 height = NA,
 units = c("in", "cm", "mm"),
 dpi = 300,
 limitsize = TRUE,
 ...
)
```

| 参数     | 描述               |
|  - ------------------ - |  - ---------------------------------------------------------- - |
| filename    | File name to create on disk.         |
| plot     | Plot to save, defaults to last plot displayed.    |
| device    | Device to use. Can either be a device function (e.g. `png()`), or one of "eps", "ps", "tex" (pictex), "pdf", "jpeg", "tiff", "png", "bmp", "svg" or "wmf" (windows only). |
| path     | Path of the directory to save plot to: path and filename are combined to create the fully qualified file name. Defaults to the working directory. |
| scale    | Multiplicative scaling factor.        |
| width, height, units | Plot size in units ("in", "cm", or "mm"). If not supplied, uses the size of current graphics device. |
| dpi     | Plot resolution. Also accepts a string input: "retina" (320), "print" (300), or "screen" (72). Applies only to raster output types. |
| limitsize   | When TRUE (the default), ggsave will not save images larger than 50x50 inches, to prevent the common error of specifying dimensions in pixels. |

例：

```R
myplot < - ggplot(data=mtcars, aes(x=mpg)) + geom_histogram() 
ggsave(file="mygraph.png", plot=myplot, width=5, height=4)
```

在当前路径下将myplot保存为名为mygraph.png的5英寸×4英寸（12.7厘米×10.2厘米）PNG格式的图片。我们可以通过设定文件扩展名为ps、tex、jpeg、pdf、tiff、png、bmp、svg或wmf来保存为不同的格式。wmf文件仅限在装有Windows系统的计算机中保存。

如果忽略plot=选项，最近创建的图形会被保存。如：

```R
ggplot(data=mtcars, aes(x=mpg)) + geom_histogram() 
ggsave(file="mygraph.pdf")
```

其他示例：

```R
## Not run: 
ggplot(mtcars, aes(mpg, wt)) + geom_point()

ggsave("mtcars.pdf")
ggsave("mtcars.png")

ggsave("mtcars.pdf", width = 4, height = 4)
ggsave("mtcars.pdf", width = 20, height = 20, units = "cm")

# delete files with base::unlink()
unlink("mtcars.pdf")
unlink("mtcars.png")

# specify device when saving to a file with unknown extension
# (for example a server supplied temporary file)
file < - tempfile()
ggsave(file, device = "pdf")
unlink(file)

# save plot to file without using ggsave
p < - ggplot(mtcars, aes(mpg, wt)) + geom_point()
png("mtcars.png")
print(p)
dev.off()


## End(Not run)
```

