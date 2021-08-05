---
title: Column based DNA purification and Genotyping
tags:
  - Lab Protocols
categories:
  - Lab
  - Lab Protocols
author: 向海
banner_img: >-
  https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Others/Fluid/post/post2.jpg
top: false
math: true
comments: true
hide: false
excerpt: The method of DNA purification and genotyping using Sangon Ki
abbrlink: 8350c993
date: 2021-08-04 15:10:29
updated: 2021-08-04 15:10:29
---

# \<Sangon\> Column-based DNA purification

Step1: 配置消化MIX：(180μl ACL Solution + 20μl proteinase K) for each tube

+ 保证液体最终能浸没样本（比如鼠尾）
+ 加完液体后，对tube贴上封口膜，防止在后续水浴过程中热胀冷缩导致tube开口

Step2：56℃水浴3h

+ 时间可以更长，在水浴的过程中过一段时间就去震荡一下tube，同时倾斜观察样本是否能够被震散
+ 震散的情况：倾斜tube，没有明显的大块固体残留，剩余细小的颗粒状固体
+ 如果没有震散，则继续水浴

Step3：加入200μl Buffer CL，颠倒混匀

+ 这一步会出现白色沉淀，确认出现白色沉淀后，进入下一步

Step4：70℃水浴10min至白色沉淀消失

Step5：加入200μl 无水乙醇，颠倒混匀

Step6：拿出吸附柱，将样本取500μl导入柱子当中

+ 这一步保证对于不同的tube取等量的样本液体
+ 尽量不要吸到别的杂志，比如毛发等

Step7：静置2min，之后在10,000rpm、RT下离心1min

Step8：倒掉收集管当中的液体，加入500μl的CW1 Solution

Step9：在10,000rpm，RT下离心30s。如果有必要的话，多次重复离心。

+ 在这一步尽量使所有的液体都被离心下去，可多次重复30s的离心过程

Step10：倒掉收集管当中的液体，加入500μl的CW2 Solution

Step11：在10,000rpm，RT下离心30s

Step12：倒掉收集管当中的液体。在12,000rpm，RT下离心2min

Step13：倒掉收集管当中的液体。敞口放置10min左右晾干

Step14：将一个新的1.5ml的离心管写好标记，等待晾干完成后将上面的分离柱组合进这个新的1.5ml的离心管上。

Step15：每一个tube取50μl的CE Buffer，悬空滴加在吸附柱的中间。静置3min。

Step16：在12,000rpm，RT下离心2min

Step17：重复一遍Step16

Step18：将样本放在-20℃保存

# PCR

> For 16p11.2df mice (https://www.jax.org/strain/013128)

<font color="FF0000">保持在冰上操作，并保持洁净环境（可以在超净台当中操作）。</font>

Step1：配置PCR反应体系（20μl）

| Taq Mix | DNA Sample | Primer LN01 (10μM) | Primer LN02 (10μM) | dd$\text{H}_{2}\text{O}$ |
| ------- | ---------- | ------------------ | ------------------ | ------------------------ |
| 10 μl   | 2 μl       | 1 μl               | 1 μl               | 6 μl                     |

Step2：设置PCR流程

1. 94℃. 2:00
2. 94℃, 0:20
3. 52℃, 1:00
4. 72℃, 1:00
5. Goto 2, 30x
6. 72℃. 2:00
7. 10℃, hold

# Agarose gel electrophoresis

Step1：制胶（1.8%）：称取1.8g agarose H，使用100ml 1x TAE溶解

+ 可以先加入一些液体，在加入agarose H之后，用剩下的液体冲掉锥形瓶壁上残留的固体

Step2：在锥形瓶口蒙上一块称量纸。使用微波炉，将溶液加热沸腾至少三次

+ 直到固体完全溶解
+ 不要沸腾太多次

Step3：等待溶液自然冷却至50-60℃

+ 此时用手背感觉微烫

Step4：在溶液当中加入8μl核酸染料，晃匀

+ 摇晃幅度可以偏大，速度应该偏慢。避免出现气泡

Step5：将制胶板提前调平，按照样本数目选择孔数。将溶液倒入其中

+ 15齿：load~20μl体系
+ 20齿：load~10μl体系

Step6：等待约20min，使胶凝固

Step7：上样：拿一个透明手套，根据样本数滴加 loading dye。

+ 一个样本3μl loading dye
+ 加入3μl的DNA marker

Step8：在140V条件下开始跑胶

+ 大概跑到一半需要20min，大概40min可以停止

