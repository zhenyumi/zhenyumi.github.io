---
title: L7 Restriction enzyme
tags:
  -  Genetic Engineering
categories:
  -  Academic Notebook
  -  Genetic Engineering
author: 向海
banner_img: >-
 https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Others/Fluid/post/post2.jpg
top: false
math: true
comments: true
hide: false
abbrlink: 289dfc91
date: 2020-11-11 08:33:51
updated: 2020-11-11 08:33:56
excerpt: 2020-11-11 08:33:56
---

# 一、Nomenclature for the restriction Endonuclease

Researcher found <u>some strains</u> of bacteria appeared to be less vulnerable to bacteriophage infections than others and <u>resisted</u> the hijacking of their cell machinery by <u>bacteriophages</u>

In the 1960s, Werner Arber observed a dramatic change in the <u>bacteriophage DNA</u> after it invaded these resistant strains of bacteria: <u>It was degraded and cut into pieces.</u>

How could the host cell distinguish between an invader DNA and its own DNA?

+ Arber hypothesized that bacterial cells might express two types of enzymes: 
 1. A **restriction enzyme** that recognizes and cuts up the foreign bacteriophage DNA.
 2. A **modification enzyme** that recognizes and modifies the bacterial DNA to protect it from the DNA-degrading activity of its very own restriction enzyme

This prediction was confirmed in the late 1960s by Stuart Linn and Arber when they <u>isolated a **modification enzyme** called **methylase** and a **restriction enzyme**</u> responsible for bacteriophage resistance in the bacterium Escherichia coli. The methylase enzyme added protective methyl groups to DNA, and the restriction enzyme cut unmethylated (unprotected) DNA at multiple locations along its length.

## The restriction modification system (RM system)

<img src="https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/Academic_Notes/Genetic%20Engineering/image-20201101105532209.png" alt="image-20201101105532209" style="zoom:100%;" />
+ The **restriction enzyme** cut unmethylated DNA which is exogeneous (from Bacteriophage)
+ The **methylase enzyme** added protective methyl groups to endogenous DNA therefore protect it from degradation by the restriction enzyme.

## An overview of Restriction Enzymes

Bacteria have an enzymatic immune system that recognizes and destroys foreign DNA

+ Over 10,000 bacteria species have been screened for restriction enzymes. 
+ Over 3000 have been identified
 + More than 600 available commercially

## Nomenclature for the Restriction Endonuclease

Named for bacterial genus, species, strain, and type：

Example: EcoR I

+ Genus: **E**scherichia
+ Species: **co**li
+ Strain: **R**
+ Order discovered: **1**

### 1. Different types of Restriction Endonuclease

+ Type I and Type III restriction enzymes

Type I - **multi-subunit complex**, the complex with both endonuclease and methylase activities, cleave at random up to 1000 bp from recognition sequence

Type III - **multi-subunit complex**, with both endonuclease and methylase activities, cut about 25 bp from recognition sequence

These enzymes are difficult to be used in genetic engineering-multi-subunit, unseparable endonuclease and methylase activities

<img src="https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/Academic_Notes/Genetic%20Engineering/image-20201101110124082.png" alt="image-20201101110124082" style="zoom:50%;" />

### 2. Type II restriction enzyme

**Type II** - the methyltransferase and endonuclease are encoded as two separate proteins and act independently, cleave DNA within or close to the recognition sequence

+ Mostly used for gene analysis and cloning
+ Recognize 4-8bp sequences
+ Need Mg2+ as cofactor
+ Cut in close proximity of recognition site
+ Homodimer
+ ATP hydrolysis is not required

#### Features of Type II P Restriction Enzyme 

Recognition sites often have symmetry (**Palindromic**)

+ **A great bargain:** **A nut for a jar of tuna**

<img src="https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/Academic_Notes/Genetic%20Engineering/image-20201101110415252.png" alt="image-20201101110415252" style="zoom:67%;" />

#### Estimate the frequency of restriction site

How often would a 4bp site of a restriction enzyme appear in the genome?

Recognition sites often 4-8bp long

+ You can roughly estimate how frequent a 4bp sequence appears
+ Once in 4^4^ = 1/256

#### Blunt Ends & Sticky Ends

<img src="https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/Academic_Notes/Genetic%20Engineering/image-20201101112217631.png" alt="image-20201101112217631" style="zoom:100%;" />
# 二、Exonuclease & Endonuclease; Sticky End & Blunt End; Star Activity; Isoschizomers & Isocaudamer

**Isoschizomers (同分裂体)** are pairs of restriction enzymes specific to the same recognition sequence

+ 同一识别序列特有的一对限制性内切酶

An enzyme that recognizes a slightly different sequence, but produces the same ends is an **isocaudomer(异分裂体)**

+ 能识别一个略有不同的序列，但产生相同末端的酶

<img src="https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/Academic_Notes/Genetic%20Engineering/image-20201101112255783.png" alt="image-20201101112255783" style="zoom:100%;" />
## Star Activity

Star activity is the **relaxation or alteration of the** **specificity** of restriction enzyme mediated cleavage of DNA that can occur **under reaction conditions that differ** **significantly from those optimal for the enzyme. –** result random pattern

**Changed** **ionic strength**, **high** **pH**, and **high (> 5% v/v)** **glycerol** **concentrations can trigger star activity.** 

Note that commercial restriction enzymes are usually supplied in a buffer containing a substantial amount of **glycerol (50% v/v is typical),** meaning insufficient dilution of the enzyme solution can cause star activity

# 三、The application of Restriction Enzyme

Gene Cloning –cut and join two pieces of DNA with the coordination of DNA ligase

<img src="https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/Academic_Notes/Genetic%20Engineering/image-20201101112502718.png" alt="image-20201101112502718" style="zoom:67%;" />

1. Designing of primer with restriction site
2. Amplifying target gene by PCR and designed primer Double digestion of vector and amplified gene by same REs
3. Ligation of gene and vector
4. Transformation
5. Expression

Genotyping a DNA sample – SNP or RFLP

+ SNP – Single Nucleotide Polymorphism 单核苷酸多态性
 + 单核苷酸多态性主要是指在基因组水平上由单个核苷酸的变异所引起的DNA序列多态性。它是人类可遗传的变异中最常见的一种，占所有已知多态性的90%以上。
+ RFLP – Restriction Fragment Length Polymorphism 限制性片段长度多态性
 + 限制性片段长度多态性(restriction fragment length polymorphism,RF LP )简称PCR-RFLP 分析。它主要是设计适当的扩增引物，使扩增片段包括一个或数个多态性的限制性内切酶识别序列，在PCR 扩增后用该限制酶切割PCR 产物，根据电泳后酶切(Amp-FLP) 对VNTR.STR 等重复序列，<u>因重复单位数目的不同而呈现高度多态。</u>

<img src="https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/Academic_Notes/Genetic%20Engineering/image-20201101112719551.png" alt="image-20201101112719551" style="zoom:67%;" />

## Detection the SNP with Restriction Enzyme

<img src="https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/Academic_Notes/Genetic%20Engineering/image-20201101112743236.png" alt="image-20201101112743236" style="zoom:100%;" />
## RFLP as Molecular Marker

<img src="https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/Academic_Notes/Genetic%20Engineering/image-20201101112925412.png" alt="image-20201101112925412" style="zoom:100%;" />
+ Analysis of RFLP is used in genome mapping, DNA fingerprinting, genetic disease analysis and identifying mutations (polymorphisms).

<img src="https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/Academic_Notes/Genetic%20Engineering/image-20201101112940653.png" alt="image-20201101112940653" style="zoom:100%;" />


