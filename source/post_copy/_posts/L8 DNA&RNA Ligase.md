---
title: L8 DNA&RNA Ligase
tags:
  - Genetic Engineering
categories:
  - Academic Notebook
  - Genetic Engineering
author: 向海
banner_img: >-
  https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Others/Fluid/post/post2.jpg
top: false
math: true
comments: true
hide: false
abbrlink: 6a4338bb
date: 2020-11-11 08:33:51
updated: 2020-11-11 08:33:58
excerpt: 2020-11-11 08:33:58
---


# 一、The function of an DNA ligase

Definition: 

+ DNA ligases catalyze the <u>formation of a phosphodiester</u> bond between 
+ DNA single strands in the duplex form.

What’s the function of DNA ligase in vivo ? 

1. DNA damage repair
2. DNA recombination during Meiosis and antibody formation
3. Seal the gaps during DNA replication

<img src="https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/Academic_Notes/Genetic%20Engineering/image-20201108105036447.png" alt="image-20201108105036447" style="zoom:67%;" />

# 三、DNA ligase & RNA ligase

## T4 DNA ligase

**Origin: T4 Phage**

**Feature:** 

1. Favor dsDNA over ssDNA. Much less efficient in ssDNA ligation
2. Use ATP as energy source

**Usage: **

1. Repair the single stranded nick in the double stranded DNA or RNA
2. Join blunt end and cohesive end termini

![image-20201108105303561](https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/Academic_Notes/Genetic%20Engineering/image-20201108105303561.png)

## *E.coli* DNA ligase

**Origin:** **E.coli**

**Feature:**

1. Use dsDNA as substrate, much less efficient on ssDNA
2. Use NAD as a cofactor and energy source
3. Only repair cohensive end but not blunt end

**Usage:** 

+ Selective ligation of nicks in dsDNA

![image-20201108105525415](https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/Academic_Notes/Genetic%20Engineering/image-20201108105525415.png)

## T4 RNA ligase I

**Origin: T4 phage**

**Feature:**

1. It is a single stranded ligase
2. Substrate include both ssDNA and ssRNA

**Usage:** 

+ Ligate a ssDNA/ssRNA with a ssDNA or ssRNA adaptor (NGS library prep）

<img src="https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/Academic_Notes/Genetic%20Engineering/image-20201108105848962.png" alt="image-20201108105848962" style="zoom:50%;" />

## T4 RNA ligase 2

**Origin: T4 phage**

**Feature:** 

+ It is a double-stranded RNA ligase

**Usage:** 

1. Seal nicks in dsRNA.
2. Ligate the 3’OH of RNA to the 5’ phosphate of DNA in a double stranded structure

![image-20201108110411245](https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/Academic_Notes/Genetic%20Engineering/image-20201108110411245.png)

|                     | dsDNA | ssDNA                      | dsRNA | ssRNA | Comments                                                     |
| ------------------- | ----- | -------------------------- | ----- | ----- | ------------------------------------------------------------ |
| T4 DNA ligase       | ✔     | ✔, but much less efficient | X     | X     | 1. ATP as energy source<br />2. Joint blunt and cohesive end |
| *E.coli* DNA ligase | ✔     | ✔, but much less efficient | X     | X     | 1. NAD as energy source<br />2. Joint cohesive end           |
| T4 RNA ligase 1     | X     | ✔                          | X     | ✔     |                                                              |
| T4 RNA ligase 2     | X     | X                          | ✔     | X     |                                                              |

# 四、Pre-adenylated adaptor

## 5’ Pre-adenylated adaptor

DNA/RNA-adenylate is a intermediate of ligation reaction 

Pre-adenylated 5’ end can increase ligation efficiency of T4 DNA/RNA ligase significantly

<img src="https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/Academic_Notes/Genetic%20Engineering/image-20201108110448433.png" alt="image-20201108110448433" style="zoom: 67%;" />

rAPP-Adaptor:

<img src="https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/Academic_Notes/Genetic%20Engineering/image-20201108110518324.png" alt="image-20201108110518324" style="zoom: 50%;" />

# 五、Consideration for a ligation reaction

1. Choose the right ligase according to the substrate
2. Ligation temperature, time and buffer composition
3. Check if 3’OH and 5’ P exist in your substrate

Some primers do not have 3'-OH or 5'-P, therefore the PCR product do not has these functional groups in the 5' and 3' end too. Therefore, there will exist a nick after ligation reaction (hard for ligation).