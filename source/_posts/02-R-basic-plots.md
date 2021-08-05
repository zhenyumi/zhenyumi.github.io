---
title: 02. R <- 基本绘图Ⅰ
tags:
  - R
  - Statistics
  - 速查
categories:
  - 软件使用总结
  - R
author: 向海
index_img: >-
  https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/R/20200720_%E6%B0%B4%E9%8F%A1.png
banner_img: >-
  https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/R/20200720_%E5%A4%8F%E3%80%80%E6%B5%B7.png
top: false
math: true
hide: false
comments: true
excerpt: >-
  包括 Bar chart, Pie chart, Histograms, Box plot, (Two-way) scatter plot, Line
  graph (Time series data)
abbrlink: 9d6e3895
date: 2020-07-14 20:13:52
updated: 2020-08-02 20:22:00
---

这篇文章摘录了绘制一些基本图表的方法

# 一、条形图 (Bar Chart)

在条形图的例子当中使用了随`vcd`包分发的`Arthritis`数据框：`library(vcd)`，可以通过`vcd`来创建棘状图（spinogram）。

## 基本条形图

使用函数`barplot()`来创建基本条形图，大多数主要参数与其它图像是通用的，其中需要注意的主要参数有：

| 参数   | 描述                                                         |
| ------ | ------------------------------------------------------------ |
| height | height是一个向量或一个矩阵，它是绘图过程中每个bar的值（高度） |
| horiz  | 默认为FALSE，若`horiz=TRUE`则会生成水平条形图                |

例：

本例中使用的数据：

```R
#构建数据
> counts <- table(Arthritis$Improved)
> counts

  None   Some Marked 
    42     14     28
```

绘图代码：

```R
#构建数据
counts <- table(Arthritis$Improved)
#为了方便展示，将两幅图放在同一个绘图区域
opar <- par()
par(mfrow=c(1,2))
#绘图
##生成垂直条形图
barplot(counts, 
        main="Simple Bar Plot", 
        xlab="Improvement", 
        ylab="Frequency")
##生成水平条形图
barplot(counts, 
        main="Horizontal Bar Plot", 
        xlab="Frequency", 
        ylab="Improvement",
        horiz=TRUE) 
#恢复全局设置
par(opar)
```

<img src="https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/R/Basic_Plots/image-20200714203508524.png" alt="image-20200714203508524" style="zoom:67%;" />

### 1. 条形图的微调

可以使用参数`cex.names`来减小字号。将其指定为小于1的值可以缩小标签的大小。可选的参数`names.arg`允许你指定一个字符向量作为条形的标签名。你同样可以使用图形参数辅助调整文本间隔。

| 参数 | 描述                                                         |
| :--: | :----------------------------------------------------------- |
| las  | numeric in {0,1,2,3}; the style of axis labels.<br/>0:<br/>always parallel to the axis [default],<br/>1:<br/>always horizontal,<br/>2:<br/>always perpendicular to the axis,<br/>3:<br/>always vertical.<br/>Also supported by mtext. Note that string/character rotation via argument srt to par does not affect the axis labels. |

例：

```R
# 调整参数
opar <- par()
par(mar=c(5,8,4,2)) # 增加y边界的大小
par(las=2) # 旋转条形的标签
counts <- table(Arthritis$Improved) 
barplot(counts, 
        main="Treatment Outcome", 
        horiz=TRUE, 
        cex.names=0.8, # 缩小字体大小，让标签更合适
        names.arg=c("No Improvement", 
                    "Some Improvement", "Marked Improvement")) # 修改标签文本
#恢复全局设置
par(opar)
```

<img src="https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/R/Basic_Plots/image-20200720153243518.png" alt="image-20200720153243518" style="zoom:67%;" />

## 堆砌条形图与分组条形图

如果`height`是一个矩阵而不是一个向量，则绘图结果将是一幅堆砌条形图或分组条形图。

堆砌条形图与分组条形图中的重要参数为：

| 参数   | 描述                                                         |
| ------ | ------------------------------------------------------------ |
| beside | 若beside=FALSE（默认值），则矩阵中的每一列都将生成图中的一个条形，各列中的值将给出 堆砌的“子条”的高度。<br />若beside=TRUE，则矩阵中的每一列都表示一个分组，各列中的值将并列而不是堆砌。 |

例：

本例中使用的数据：

```R
> counts <- table(Arthritis$Improved, Arthritis$Treatment)
> counts
        
         Placebo Treated
  None        29      13
  Some         7       7
  Marked       7      21
```

绘图代码：

```R
#构建数据
counts <- table(Arthritis$Improved, Arthritis$Treatment)
#为了方便展示，将两幅图放在同一个绘图区域
opar <- par()
par(mfrow=c(1,2))
#绘图
##堆砌条形图
barplot(counts, 
        main="Stacked Bar Plot", 
        xlab="Treatment", 
        ylab="Frequency", 
        col=c("red", "yellow","green"), 
        legend=rownames(counts)) 
##组合条形图
barplot(counts, 
        main="Grouped Bar Plot", 
        xlab="Treatment", 
        ylab="Frequency", 
        col=c("red", "yellow", "green"), 
        legend=rownames(counts), 
        beside=TRUE)
#恢复全局设置
par(opar)
```

<img src="https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/R/Basic_Plots/image-20200714204252633.png" alt="image-20200714204252633" style="zoom: 67%;" />

## 均值条形图

条形图并不一定要基于计数数据或频率数据。可以使用数据整合函数并将结果传递给`barplot()`函数，来创建表示均值、中位数、标准差等的条形图。

本例中使用的数据：

```R
> frame <- data.frame(Arthritis$Treatment,Arthritis$Age)
> means <- aggregate(frame$Arthritis.Age, 
                     by = list(frame$Arthritis.Treatment),
                     FUN = mean)
> means
  Group.1        x
1 Placebo 52.18605
2 Treated 54.58537
> means <- means[order(means$x),] # 将均值从小到大排序
> means
  Group.1        x
1 Placebo 52.18605
2 Treated 54.58537
```

绘图代码：

```R
# 构建数据
frame <- data.frame(Arthritis$Treatment,Arthritis$Age)
means <- aggregate(frame$Arthritis.Age, 
                     by = list(frame$Arthritis.Treatment),
                     FUN = mean)
means <- means[order(means$x),] # 将均值从小到大排序

# 绘图
barplot(means$x, names.arg=means$Group.1)
```

<img src="https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/R/Basic_Plots/image-20200720152848007.png" alt="image-20200720152848007" style="zoom:50%;" />

## 棘状图

棘状图对堆砌条形图进行了重缩放，这样每个条形的高度均为1，每一段的高度即表示比例。棘状图可由vcd包中的函数`spine()`绘制。

例：

使用的数据：

```R
> library(vcd)
> attach(Arthritis)
> counts <- table(Treatment, Improved)
         Improved
Treatment None Some Marked
  Placebo   29    7      7
  Treated   13    7     21
> detach(Arthritis)
```

绘图代码：

```R
library(vcd) 
attach(Arthritis) 
counts <- table(Treatment, Improved) 
spine(counts, main="Spinogram Example") 
detach(Arthritis)
```

<img src="https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/R/Basic_Plots/image-20200720153857731.png" alt="image-20200720153857731" style="zoom:67%;" />

# 二、饼图 （Pie Chart）

## 经典饼图

饼图的绘图函数是 `pie(x, labels)`，当绘制3D饼图的时候，需要使用 `plotrix` 包中的 `pie3D()` 函数

| 参数     | 描述                                 |
| -------- | ------------------------------------ |
| *x*      | 一个非负数值向量，表示每个扇形的面积 |
| *labels* | 表示各扇形标签的字符型向量。         |

例：

使用的数据：

```R
> slices <- c(10, 12,4, 16, 8) 
> lbls <- c("US", "UK", "Australia", "Germany", "France")

> mytable <- table(Arthritis$Treatment)
> mytable
Placebo Treated 
     43      41 
```

绘图参数：

```R
opar <- par()
par(mfrow=c(2, 2)) # 绘制2X2图像，方便展示

# 构建数据
slices <- c(10, 12,4, 16, 8) 
lbls <- c("US", "UK", "Australia", "Germany", "France")

# 绘图
## 简单条形图
pie(slices, 
    labels = lbls, 
    main="Simple Pie Chart")
## 添加比例数值，通过修改label参数完成
pct <- round(slices/sum(slices)*100) 
lbls2 <- paste(lbls, " ", pct, "%", sep="") 
pie(slices, labels=lbls2, col=rainbow(length(lbls2)),
    main="Pie Chart with Percentages")
## 3D饼图
library(plotrix)
pie3D(slices, labels=lbls,explode=0.1, 
      main="3D Pie Chart ")
## 从表格创建饼图
mytable <- table(Arthritis$Treatment)
lbls3 <- paste(names(mytable), "\n", mytable, sep="") 
pie(mytable, labels = lbls3, 
    main="Pie Chart from a Table\n (with sample sizes)")

# 恢复全局参数
par(opar)
```

<img src="https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/R/Basic_Plots/image-20200720155126672.png" alt="image-20200720155126672" style="zoom: 67%;" />

## 扇形图

扇形图（fan plot）是饼图的变种。扇形图提供了一种同时展示相对数量和相互差异的方法。在R中，扇形图是通过`plotrix`包中的`fan.plot()`函数实现的。

例：

```R
library(plotrix) 
slices <- c(10, 12,4, 16, 8) 
lbls <- c("US", "UK", "Australia", "Germany", "France") 
fan.plot(slices, labels = lbls, main="Fan Plot")
```

<img src="https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/R/Basic_Plots/image-20200720155316328.png" alt="image-20200720155316328" style="zoom:67%;" />

# 三、直方图 (Histogram)

直方图通过在*x*轴上将值域分割为一定数量的组，在*y*轴上显示相应值的频数，展示了连续型变量的分布。可以使用如下函数创建直方图：`hist(x)`

| 参数   | 描述                                                       |
| ------ | ---------------------------------------------------------- |
| x      | 一个由数据值组成的数值向量                                 |
| freq   | freq=FALSE表示根据概率密度而不是频数绘制图形               |
| breaks | 控制组的数量。在定义直方图中的单元时，默认将生成等距切分。 |

## 部分常用函数解释

### 1. 轴须图相关

函数 `jitter`: ‘Jitter’ (Add Noise) to Numbers

+ Add a small amount of noise to a numeric vector.
+ Usage: `jitter(x, factor = 1, amount = NULL)`

| 参数   | 描述                                                         |
| ------ | ------------------------------------------------------------ |
| x      | numeric vector to which jitter should be added.              |
| factor | numeric value.                                               |
| amount | numeric; if positive, used as amount (see below), otherwise, if = 0 the default is factor * z/50. <br />Default (NULL): factor * d/5 where d is about the smallest difference between x values. |

函数 `rug`: Add a Rug to a Plot

+ Adds a rug representation (1-d plot) of the data to the plot.
+ Usage: `rug(x, ticksize = 0.03, side = 1, lwd = 0.5, col = par("fg"), quiet = getOption("warn") < 0, ...)`

| 参数     | 描述                                                         |
| -------- | ------------------------------------------------------------ |
| x        | A numeric vector                                             |
| ticksize | The length of the ticks making up the ‘rug’. Positive lengths give inwards ticks. |
| side     | On which side of the plot box the rug will be plotted. Normally 1 (bottom) or 3 (top). |
| lwd      | The line width of the ticks. Some devices will round the default width up to 1. |
| col      | The colour the ticks are plotted in.                         |
| quiet    | logical indicating if there should be a warning about clipped values. |
| ...      | further arguments, passed to axis, such as line or pos for specifying the location of the rug. |

函数 `lines`: Add Connected Line Segments to a Plot

+ A generic function taking coordinates given in various ways and joining the corresponding points with line segments.
  + `lines(x,y)`是在给定`x, y`两个向量之后，将`x,y`中的每一个元素对应为一些点，然后把这些点用平滑的曲线连接。
+ Usage: `lines(x, ...)`

| 参数 | 描述                                  |
| ---- | ------------------------------------- |
| x, y | coordinate vectors of points to join. |
| ...  | Arguments the same as `par`           |

### 2. 正态曲线相关

函数 `dnorm, pnorm, qnorm, rnorm`:  The Normal Distribution

+ **D**ensity, **d**istribution function, **q**uantile function and **r**andom generation for the normal distribution with mean equal to mean and standard deviation equal to sd.
+ Usage：
  + `dnorm(x, mean = 0, sd = 1, log = FALSE)`
  + `pnorm(q, mean = 0, sd = 1, lower.tail = TRUE, log.p = FALSE)`
  + `qnorm(p, mean = 0, sd = 1, lower.tail = TRUE, log.p = FALSE)`
  + `rnorm(n, mean = 0, sd = 1)`

| 参数       | 描述                                                         |
| ---------- | ------------------------------------------------------------ |
| x, q       | vector of quantiles.                                         |
| p          | vector of probabilities.                                     |
| n          | number of observations. If length(n) > 1, the length is taken to be the number required. |
| mean       | vector of means.                                             |
| sd         | vector of standard deviations.                               |
| log, log.p | logical; if TRUE, probabilities p are given as log(p).       |
| lower.tail | logical; if TRUE (default), probabilities are P[X ≤ x] otherwise, P[X > x]. |

### 3. 直方图 + （轴须图，正态密度曲线）

例:

```R
opar <- par()

par(mfrow=c(2,2)) # 绘制2X2的图像，方便展示

# 绘图
## 简单直方图
hist(mtcars$mpg)
## 指定组数和颜色
hist(mtcars$mpg, 
     breaks=12, 
     col="red", 
     xlab="Miles Per Gallon", 
     main="Colored histogram with 12 bins")
## 添加轴须图
hist(mtcars$mpg, 
     freq=FALSE, 
     breaks=12, 
     col="red", 
     xlab="Miles Per Gallon", 
     main="Histogram, rug plot, density curve")
rug(jitter(mtcars$mpg)) 
lines(density(mtcars$mpg), col="blue", lwd=2)
## 添加正态密度曲线和外框
x <- mtcars$mpg 
h <- hist(x, 
        breaks=12, 
        col="red", 
        xlab="Miles Per Gallon", 
        main="Histogram with normal curve and box") 
xfit<-seq(min(x), max(x), length=40) # 构建正态曲线的x坐标
yfit<-dnorm(xfit, mean=mean(x), sd=sd(x)) # 构建正态曲线的y坐标
yfit <- yfit*diff(h$mids[1:2])*length(x) # 对每一个点乘频数和原来直方图中的间距，以得到好的拟合的效果。
lines(xfit, yfit, col="blue", lwd=2) 
box()

par(opar)
```

<img src="https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/R/Basic_Plots/image-20200720161143177.png" alt="image-20200720161143177" style="zoom:80%;" />

# 四、核密度图 

这部分不涉及使用 `ggplot2` 的情况

## 绘制核密度图

核密度曲线类似于概率密度曲线，其曲线下的面积是1，因此其y轴上的单位通常是小于1的核密度分布值。对这个核密度曲线求积分的结果为1，也就是其曲线下的面积为1。

绘制密度图的方法（不叠加到另一幅图上方）为：`plot(density(x))`

+ 其中的`x`是一个数值型向量。由于`plot()`函数会创建一幅新的图形，所以要向一幅已经存在的图形上叠加一条密度曲线，可以使用`lines()`函数

例：

```R
opar <- par()

# 构建数据与参数调整
par(mfrow=c(2,1)) 
d <- density(mtcars$mpg)

# 绘图
## 默认配置绘制
plot(d)
## 修改其它参数后绘制
d <- density(mtcars$mpg)
plot(d, main="Kernel Density of Miles Per Gallon")
polygon(d, col="red", border="blue") # 曲线修改为蓝色，使用实心的红色填充曲线下方区域
rug(mtcars$mpg, col="brown")# 添加棕色的轴须图

par(opar)
```

<img src="https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/R/Basic_Plots/image-20200720164323785.png" alt="image-20200720164323785" style="zoom:67%;" />

+ `polygon()`函数根据顶点的*x*和*y*坐标（本例中由`density()`函数提供）绘制了多边形。

## 比较核密度图

这部分使用到了包 `sm`

核密度图可用于比较组间差异。可能是由于普遍缺乏方便好用的软件，这种方法其实完全没有被充分利用。幸运的是，`sm`包漂亮地填补了这一缺口。

使用`sm`包中的`sm.density.compare()`函数可向图形叠加两组或更多的核密度图。使用格式为：

+ `sm.density.compare(x, factor) `

| 参数   | 描述           |
| ------ | -------------- |
| x      | 一个数值型向量 |
| factor | 是一个分组变量 |
|        |                |

例：

```R
opar <- par()

# 设置参数及构建数据
library(sm) 
attach(mtcars)

# 绘图
## 创建分组因子
## 变量cyl是一个以4、6或8编码的数值型变量。为了向图形提供值的标签，这里cyl转换为名为cyl.f的因子。
cyl.f <- factor(cyl, levels= c(4,6,8), 
                labels = c("4 cylinder", "6 cylinder",
                           "8 cylinder")) 
## 绘制密度图
sm.density.compare(mpg, cyl, xlab="Miles Per Gallon") 
title(main="MPG Distribution by Car Cylinders") 
## 通过鼠标单击添加图例
colfill<-c(2:(1+length(levels(cyl.f)))) 
legend(locator(1), levels(cyl.f), fill=colfill)

detach(mtcars)
par(opar)
```

+ 对图例部分的说明：首先创建的是一个颜色向量，这里的`colfill`值为c(2, 3, 4)。然后通过`legend()`函数向图形上添加一个图例。第一个参数值`locator(1)`表示用鼠标点击想让图例出现的位置来交互式地放置这个图例。第二个参数值则是由标签组成的字符向量。第三个参数值使用向量`colfill`为`cyl.f`的每一个水平指定了一种颜色。

<img src="https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/R/Basic_Plots/image-20200720172619012.png" alt="image-20200720172619012" style="zoom: 67%;" />

# 五、箱线图 (Box Plot)

## 箱线图的标注

箱线图（又称盒须图）通过绘制连续型变量的五数总括，即最小值、下四分位数（第25百分位数）、中位数（第50百分位数）、上四分位数（第75百分位数）以及最大值，描述了连续型变量的分布。箱线图能够显示出可能为离群点（范围 ±1.5*IQR 以外的值，IQR表示四分位距，即上四分位数与下四分位数的差值）的观测。例如：`boxplot(mtcars$mpg, main="Box plot", ylab="Miles per Gallon") `

![image-20200720165954929](https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/R/Basic_Plots/image-20200720165954929.png)

+ 默认情况下，两条须的延伸极限不会超过盒型各端加1.5倍四分位距的范围。此范围以外的值将以点 (outlier) 来表示

## 绘制箱线图

箱线图可以展示单个变量或分组变量。使用格式为

+ `boxplot(formula, data=dataframe)`

| 参数       | 描述                                                         |
| ---------- | ------------------------------------------------------------ |
| x          | 向量，列表或数据框。                                         |
| formula    | 公式，形如y~grp,其中y为向量，grp是数据的分组，通常为因子。<br />具体的介绍看此表之后 |
| range      | 数值，默认为1.5，表示触须的范围，即range × (Q3 - Q1)         |
| width      | 箱体的相对宽度，当有多个箱体时，有效。                       |
| data       | 提供数据的数据框（或列表）, 用于提供公式中的数据。           |
| varwidth   | 逻辑值，控制箱体的宽度， 只有图中有多个箱体时才发挥作用，默认为FALSE， 所有箱体的宽度相同，当其值为TRUE时，代表每个箱体的样本量作为其相对宽度<br />varwidth=TRUE将使箱线图的宽度与其样本大小的平方根成正比 |
| notch      | 逻辑值，如果该参数设置为TRUE，则在箱体两侧会出现凹口。默认为FALSE。 |
| outline    | 逻辑值，如果该参数设置为FALSE，则箱线图中不会绘制离群值。默认为TRUE |
| names      | 绘制在每个箱线图下方的分组标签                               |
| plot       | 逻辑值，是否绘制箱线图，如设置为FALSE，则不绘制箱线图，而给出绘制箱线图的相关信息，如5个点的信息等。 |
| border     | 箱线图的边框颜色                                             |
| col        | 箱线图的填充色。                                             |
| horizontal | 逻辑值，指定箱线图是否水平绘制，默认为FALSE。<br />horizontal=TRUE可以反转坐标轴的方向 |

对于 `formula` 的解释：

+ `y ~ A`，这将为类别型变量A的每个值并列地生成数值型变量y的箱线图
+ 公式`y ~ A*B`则将为类别型变量A和B所有水平的两两组合生成数值型变量y的箱线图

例：

```R
x <- Arthritis$Sex
x <- factor(x)
f <- Arthritis$Age
boxplot(f~x)
```



### 1. 单组箱线图

直接使用 `boxplot(x)` 实现：

```R
x <- c(144,166,163,143,152,169,130,159,160,175,161,170, 146,159,150,183,165,146,169)
boxplot(x)
```

<img src="https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/R/Basic_Plots/image-20200720171215247.png" alt="image-20200720171215247" style="zoom:50%;" />

### 2. 多组箱线图

#### 单交叉因子和凹槽

需要设置 `boxplot` 中的 `formula`, `data` 等参数：

当 `notch = TRUE` 的时候，箱线图含凹槽

绘图代码：使用了预设数据集 `mtcars` 中的 `mpg` , `cyl`

```R
# 经典箱线图
boxplot(mpg ~ cyl, data=mtcars, 
        main="Car Mileage Data", 
        xlab="Number of Cylinders", 
        ylab="Miles Per Gallon")
# 含凹槽的箱线图
boxplot(mpg ~ cyl, data=mtcars, 
        notch=TRUE, 
        varwidth=TRUE, 
        col="red", 
        main="Car Mileage Data", 
        xlab="Number of Cylinders", 
        ylab="Miles Per Gallon")
```

![image-20200720173458422](https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/R/Basic_Plots/image-20200720173458422.png)

#### 多交叉因子

绘图代码：使用了预设数据集 `mtcars` 中的 `mpg` , `cyl` 和 `am`

```R
# 创建汽缸数量的因子
mtcars$cyl.f <- factor(mtcars$cyl, 
                       levels=c(4,6,8), 
                       labels=c("4","6","8")) 
# 创建变速箱类型的因子
mtcars$am.f <- factor(mtcars$am, 
                      levels=c(0,1), 
                      labels=c("auto", "standard"))
# 生成箱线图
boxplot(mpg ~ am.f *cyl.f, 
        data=mtcars, 
        varwidth=TRUE, 
        col=c("gold","darkgreen"), 
        main="MPG Distribution by Auto Type", 
        xlab="Auto Type", ylab="Miles Per Gallon")
```

<img src="https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/R/Basic_Plots/image-20200720173736995.png" alt="image-20200720173736995" style="zoom:80%;" />

# 六、点图 (Point Plot, Dot Chart)

## 绘制经典点图

点图提供了一种在简单水平刻度上绘制大量有标签值的方法。你可以使用`dotchart()`函数创建点图，格式为：`dotchart(x, labels=)`

| 参数   | 描述                                                         |
| ------ | ------------------------------------------------------------ |
| x      | 是一个数值向量                                               |
| labels | 由每个点的标签组成的向量                                     |
| groups | 可以通过添加参数groups来选定一个因子，用以指定*x*中元素的分组方式。如果这样做，则参数gcolor可以控制不同组标签的颜色，cex可以控制标签的大小。 |

例：

```R
dotchart(mtcars$mpg, labels=row.names(mtcars), cex=.7, 
         main="Gas Mileage for Car Models", 
         xlab="Miles Per Gallon")
```

![image-20200720175338024](https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/R/Basic_Plots/image-20200720175338024.png)

## 分组、排序、着色后的点图

例：

涉及的数据：

```R
> x <- mtcars[order(mtcars$mpg),]
> x
```

<img src="https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/R/Basic_Plots/image-20200720175808166.png" alt="image-20200720175808166" style="zoom:67%;" />

```R
# 根据每加仑汽油行驶英里数（从最低到最高）对数据框mtcars进行排序，结果保存为数据框x
x <- mtcars[order(mtcars$mpg),] 
# 将x中的数值向量cyl转换为一个因子
x$cyl <- factor(x$cyl)
# 添加一个字符型向量（color）到数据框x中，根据cyl的值，它所含的值为"red"、"blue"或"darkgreen"
x$color[x$cyl==4] <- "red" 
x$color[x$cyl==6] <- "blue" 
x$color[x$cyl==8] <- "darkgreen" 
# 绘图
dotchart(x$mpg, 
         labels = row.names(x), # 各数据点的标签取自数据框的行名（车辆型号）
         cex=.7, 
         groups = x$cyl,  # 数据点根据汽缸数量分组
         gcolor = "black",  # 数字4、6和8以黑色显示
         color = x$color, # 点和标签的颜色来自向量color
         pch=19, 
         main = "Gas Mileage for Car Models\ngrouped by cylinder", 
         xlab = "Miles Per Gallon")
```

![image-20200720180038375](https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/R/Basic_Plots/image-20200720180038375.png)