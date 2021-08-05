---
title: L4 Qualification and Quantification of DNA&RNA
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
abbrlink: 44583cb1
date: 2020-11-11 08:33:51
updated: 2020-11-11 08:33:53
excerpt: 2020-11-11 08:33:53
---

# 一、Handling and Quantification of DNA/RNA

<img src="https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/Academic_Notes/Genetic%20Engineering/image-20201018130700852.png" alt="image-20201018130700852" style="zoom: 33%;" />

+ Pure DNA/RNA only form tiny pellet after precipitation. - semi transparent and easy to be dissolved

Mainly two types of quantification methods

1. Absorbance based methods
   + the principle is simple, the key is the **ratio**. 
2. Fluorescence based methods

## The Absorbance Based Methods

The **Beer‐Lambert Law** — draws a direct correlation between absorbance and concentration. While nucleic acids absorb at many wavelengths, <u>they have a peak absorbance of UV light at 260nm</u>. Thus, the amount of light absorbed in this region can be used to determine the concentration of RNA or DNA in solution 
$$
A = \varepsilon c l
$$

+ A=absorbance, 
+ ԑ=extinction coefficient 
+ c=concentration
+ l=path length

<img src="https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/Academic_Notes/Genetic%20Engineering/image-20201018131057045.png" alt="image-20201018131057045" style="zoom:67%;" />

+ The **nucleic acids** (DNA, RNA and oligo) solutions with different concentration has different <u>ability absorbing light.</u>
  + 1 OD~260~ Unit $\rarr$ 50ug/ml for double stranded DNA
  + 1 OD~260~ Unit $\rarr$ 40ug/ml for single stranded RNA
  + 1 OD~260~ Unit $\rarr$ 33ug/ml for single stranded DNA (ssDNA)

### 1. The Ideal Ratios

What would be the ideal ratios for pure DNA and or RNA in solution?

+ A260/280 ratio 

  + A l**ow A260/A280 ratio** often indicate <u>protein</u> contamination, Aromatic amino acid side chains are responsible for 280nm absorbance.
  + For DNA: A260/280 is nearly 1.8
  + For RNA: A260/280 is nearly 2.
  + **Reason**: RNA will typically have a higher 260/280 ratio due to the higher ratio of **Uracil** compared to that of **Thymine**

+ **A260/230 ratio**, ideally more than 1.8
  + The A260/230 ratio indicates the presence of organic contaminants which could <u>interfere with downstream applications</u>
  +  **Low A260/A230** often indicate presence of following impurities

  1. **Plant polyphenol** – common contaminants when doing RNA/DNA extraction from plant tissues.
  2. Phenol
  3. Chaotropic salts from your lysis buffer 

### 2. Real World Examples

<img src="https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/Academic_Notes/Genetic%20Engineering/image-20201018131554115.png" alt="image-20201018131554115" style="zoom: 50%;" />

+ the A260/230 ratio of 1.29 is significantly lower than 2—indicating some sort of organic contaminants present in the sample

<img src="https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/Academic_Notes/Genetic%20Engineering/image-20201018131643390.png" alt="image-20201018131643390" style="zoom:50%;" />

+ This RNA has low A260/280 and A260/230 ratios. Additionally, the maximum peak is at 270 nm. Most likely due to presence of high concentration of phenol
+ Note that the concentration of RNA returned by the spectrophotometer is not at all reliable due to the contamination

<img src="https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/Academic_Notes/Genetic%20Engineering/image-20201018131826138.png" alt="image-20201018131826138" style="zoom:50%;" />

### 3. How to Keep The Ratio Constant

1. Constant ionic strength – same buffer as blank and dilution
2. Constant pH – pH 8.0 1xTE buffer is recommanded

## Fluorescence Based Methods

### 1. The shortage of absorbance based method

1. Can’t distinguish between DNA/RNA/free nucleotide 
2. Might not be accurate when concentration of DNA/RNA is low, due to the presence of other impurities. 
3. No size information
4. Might not be sensitive – below 10ng/ul

### 2. Stains

**Fluorescent DNA/RNA Stains**– Bind nucleic acids and emit fluorescence when excited. 

+ DNA(RNA) Stains are fluorescent dyes that bind nucleic acids and have a wide range of applications, including in flow cytometry, cell-cycle studies, chromosome and nuclei counterstaining, as an indicator of apoptosis, and to quantify DNA

The technology involved:

+ Gel electrophoresis
+ DNA or RNA specific dye enables accurate quantification
+ Capillary electrophoresis + DNA/RNA specific dye

#### Gel Electrophoresis

![image-20201018132558842](https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/Academic_Notes/Genetic%20Engineering/image-20201018132558842.png)

+ agarose gel electrophoresis (**SAGE**)
+ Polyacrylamide-based gel electrophoresis (**PAGE**)

**Gel electrophoresis** is a typical fluorescence based methods

+ Matrix of choice – **Agarose** vs **Low-melting point agarose**, **Polyacrylamide**
+ Buffer of choice – TAE vs TBE buffer

The migration of DNA fragments through an agarose gel

![image-20201018132850268](https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/Academic_Notes/Genetic%20Engineering/image-20201018132850268.png)

Polyacrylamide Gel Electrophoresis

+ 在制备的过程中，加入了cross-linker
+ 因此制造出了more ordered struacture，同时也更难配置

![image-20201018133000046](https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/Academic_Notes/Genetic%20Engineering/image-20201018133000046.png)

Migration of dsDNA in gels with different concentration of acrylamide

<img src="https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/Academic_Notes/Genetic%20Engineering/image-20201018133017561.png" alt="image-20201018133017561" style="zoom: 33%;" />

**Gel electrophoresis** is a typical fluorescence based methods. 

+ Matrix of choice – Agarose vs Low-melting point agarose, Polyacrylamide
+ **Agarose gel electrophoresis (SAGE)** – Work well for a wide range of DNA length. <u>Maxima resolution is around 10bp, High Capacity.</u>
+ **Low-melting-point agarose**, you may choose it for various reason. It is a lot more transparent and have more even pore size compared with normal agarose gel, so it is <u>a better matrix for the detection of DNA/RNA in low concentration</u>
+ **Polyacrylamide-based gel electrophoresis (PAGE)** – High resolution, <u>1bp resolution is possible</u>. Low Capacity. Good for separate small RNAs and used in DNA sequencing. 
  + Denatured and Native

<img src="https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/Academic_Notes/Genetic%20Engineering/image-20201018144429617.png" alt="image-20201018144429617" style="zoom:67%;" />

#### Buffer of Choice

Buffer of choice – **TAE** vs **TBE** buffer

+ **TAE** is advantageous for high resolution of long nucleic acid fragments (qs) on agarose gels.
+ **TBE** has a greater buffering capacity and will give sharper resolution than TAE, especially when separating small fragments of DNA.

#### Stains

**Fluorescent DNA/RNA Stains**– Bind nucleic acids and emit fluorescence when excited

We often use two types of DNA stains in gel electrophoresis and other applications. 

+ UV light excited - Ethidium bromide, <u>Gel Red,</u> 
+ Blue light excited - <u>SYBR Green, Gene Green, Gel Green etc</u>

![image-20201018145408023](https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/Academic_Notes/Genetic%20Engineering/image-20201018145408023.png)

![image-20201018145415029](https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/Academic_Notes/Genetic%20Engineering/image-20201018145415029.png)

**DNA or RNA specific fluorescent Dye enables accurate quantification of DNA or RNA** 

<img src="https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/Academic_Notes/Genetic%20Engineering/image-20201018145433430.png" alt="image-20201018145433430" style="zoom: 67%;" />

The Qubit 1X dsDNA HS (High-Sensitivity) Assay Kit is designed specifically for use with the Qubit Fluorometer. The assay is highly selective for double-stranded DNA (dsDNA) over RNA and is designed to be accurate for initial sample concentrations from 10 pg/µL to 100 ng/µL.

<img src="https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/Academic_Notes/Genetic%20Engineering/image-20201018145456455.png" alt="image-20201018145456455" style="zoom:67%;" />

<img src="https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/Academic_Notes/Genetic%20Engineering/image-20201018145507310.png" alt="image-20201018145507310" style="zoom:67%;" />

Advantages:

1. accurate – highly selective
2. sensitive – can deal with sample of very low concentration

Disadvantages:

1.  Good for quantification but not for qualification (length, integrity).
2.  Concentration rely on external standard

#### Capillary electrophoresis + DNA/RNA specific dye

<img src="https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/Academic_Notes/Genetic%20Engineering/image-20201018150200305.png" alt="image-20201018150200305" style="zoom:67%;" />

Advantages: You get almost all the information you need ! 

Disadvantages: Operation with the instrument can be complicated, Expensive (both instrument and reagent)

<img src="https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/Academic_Notes/Genetic%20Engineering/image-20201018150425639.png" alt="image-20201018150425639" style="zoom:67%;" />



# 二、Detection of Nucleic acids through blotting techniques (Nucleic acids hybridization)



Nucleic Acid Hybridization: Detection of nucleic acids with known sequence from complex samples !

<img src="https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/Academic_Notes/Genetic%20Engineering/image-20201018151608412.png" alt="image-20201018151608412" style="zoom:50%;" />

## Introduction

A basic technique in molecular biology. in which single stranded Nucleic acids are allowed to interact so that complexes called **HYBRIDS** are formed by molecules with similar complementary sequences

The essence of nucleic acids hybridization is the denaturation and renaturation (**annealing**) of DNA (or RNA). 

<img src="https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/Academic_Notes/Genetic%20Engineering/image-20201018150749025.png" alt="image-20201018150749025" style="zoom:50%;" />

The principle of hybridization is the addition of a probe to a complex mixture of target DNA. The mixture is incubated under conditions that promote the formation of hydrogen bonds between complementary strands.

## Different Blotting

Nucleic acid hybridization – A brief history of Southern/Northern/Western blot

+ In 1975 when Ed Southern invented his method of using a radiolabeled <font color="FF0000">DNA probe</font> to <u>detect a specific DNA sequence within a DNA sample</u> (e.g. a fractionated genome) and named it after himself – the **Southern blot**
+ In 1977, J.C. Alwine, a biologist with a sense of humor, developed **Northern Blot**, a technique analogous to the Southern blot, this time for the <u>identification of a specific RNA within a complex RNA sample</u> using a <font color="FF0000">radio-labelled DNA probe</font>.
+ W. Neal Burnette, a post-doc working in the Nowinski group at the Hutchinson Cancer Center in Seattle, developed a technique call western
  + Seattle sitting in the west cost of US. If it is in New York, it is another story perhaps.
  + Burnette was searching for a way to combine the powers of radio immunoassay and SDS-PAGE electrophoresis so that he could <u>pinpoint specific antigens in a complex protein mixture</u>

### 1. Southern Blotting

<img src="https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/Academic_Notes/Genetic%20Engineering/image-20201018151325377.png" alt="image-20201018151325377" style="zoom:50%;" />

+ The first type of blotting to be discovered
+ Plays significant role in **Recombinant DNA Technology** as well as **Molecular Biology**.
+ Used to **detect target DNA** in a sample

**Usage of Southern blot:** To detect **a specific DNA sequence** **within a complex DNA sample.**

+ Detection of **copy number** of a certain gene
+ **Genotyping** – different restriction patterns between two alleles of a same gene
+ Detection of replication intermediate – 2D gel + southern blot.

Detection of an RFLP (Restriction fragment length polymorphism) by Southern Blotting:

> In molecular biology, restriction fragment length polymorphism (RFLP) is a technique that exploits variations in homologous DNA sequences, known as polymorphisms, in order to distinguish individuals, populations, or species or to pinpoint the locations of genes within a sequence.

![image-20201018151500072](https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/Academic_Notes/Genetic%20Engineering/image-20201018151500072.png)

Detection of DNA defect & DNA segment (Gene Defect) (Detection of the sickle cell globin gene)

<img src="https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/Academic_Notes/Genetic%20Engineering/image-20201018151540170.png" alt="image-20201018151540170" style="zoom: 33%;" />

+ Using restriction enzymes we can prove that they are different types of genes.
+ Normal DNA- 2 segments
+ Sickle cell- 1

<img src="https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/Academic_Notes/Genetic%20Engineering/image-20201018151608412.png" alt="image-20201018151608412" style="zoom: 33%;" />

![image-20201018151617739](https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/Academic_Notes/Genetic%20Engineering/image-20201018151617739.png)

![image-20201018151623310](https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/Academic_Notes/Genetic%20Engineering/image-20201018151623310.png)

<img src="https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/Academic_Notes/Genetic%20Engineering/image-20201018151639945.png" alt="image-20201018151639945" style="zoom: 25%;" />

#### Denature of dsDNA: Alkaline denaturation

At <u>high pH</u>, then, the solution is <u>rich in hydroxide ions</u>, and these negatively-charged ions can <u>pull hydrogen ions off</u> of molecules like <u>the base pairs in DNA</u>. This process disrupts the hydrogen bonding that holds the two DNA strands together, causing them to separate.

![image-20201018151825489](https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/Academic_Notes/Genetic%20Engineering/image-20201018151825489.png)

Unlike RNA, DNA lacks **a hydroxyl group on the 2' position in each** **sugar group**. This difference makes DNA much more stable in alkaline solution. 

<u>In RNA</u>, the hydroxyl group on the 2' position can <u>give up a hydrogen ion</u> to the solution at high pH, creating **a highly** **reactive** **alkoxide ion** that <u>attacks the phosphate group</u> holding two neighboring nucleotides together. 

+ DNA does not suffer from this defect and thus enjoys remarkable stability at high pH.

### 2. Northern Blot

![image-20201018152945692](https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/Academic_Notes/Genetic%20Engineering/image-20201018152945692.png)

### 3. Western Blot

![image-20201018152953782](https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/Academic_Notes/Genetic%20Engineering/image-20201018152953782.png)

1. Load and separate protein samples on SDS-PAGE
2. Electrophoretically transfer fractionated proteins onto PVDF membrane
3. Block the membrane with neutral protein (BSA or milk casein)
4. Incubate the membrane with primary antibody specific to target protein
5. Incubate the membrane with Hrp-labeled secondary antibody specific to primary antibody
6. Incubate the blot with chemiluminescent HRP substrate and expose to film

### 4. Reporter Enzymes in Blotting- HRP vs AP

The most common reporter enzymes are **horseradish peroxidase (HRP)** or **alkaline phosphatase (AP)**. Chemiluminescent substrates for <u>both</u> HRP and AP are <u>very sensitive</u> and can allow picogram to femtogram level detection.

+ The maximum signal generated from <u>HRP substrates is very fast, often within 5 minutes</u>. 
+ The signal from AP substrates, however, gradually increases over time with a signal plateau around 60 minutes. The signal from AP substrates is very stable and can last up to several days, which can be useful if multiple exposures are needed

Generally, dilution factors for the AP 2° antibodies can be greater than with HRP antibodies, thus saving reagents. The disadvantages of either <u>HRP or AP system are interferences</u>, such as azides for HRP or phosphate buffers for AP. There is also the possibility that endogenous phosphatases will react with AP substrates.



## Type of Filters in blotting techniques



**Nitrocellulose** Membrane (NC) - For the detection of nucleic acid and Protein. 

+ DNA/RNA covalently bound to membrane.

**Positively charged <u>Nylon Membrane</u>** – For DNA/RNA only

**PVDF Membrane** – For Protein only, a pre-treatment with methanol is required

## Principles of molecular hybridization

Hybridization involves annealing between two strand of DNA and or RNA with partially or fully complementary sequence. 

+ T~m~ (Melting Curve)
  + **Tm**, Heating the DNA solution above a characteristic **temperature** can <u>separate the two strands</u> of a double helix. That temperature is called the melting temperature
  + T~m50~: 50% DNA become single stranded
  + Factors affect Tm would determine the <u>stringency</u> of hybridization
    + **High stringency** means a condition only allows <u>perfect match</u> between two piece of ssDNA. (高严格度)
+ Stringency of hybridization (Influenced by the following reasons)
  + GC content
    + **GC content**, Because a G–C base pair has three hydrogen bonds and an A–T pair only has two, nucleic acid double helices with a **high G+C** content have a **higher Tm** than do those with a greater proportion of A+T.
  + Salt concentration
    + Salt: High Salt concentration reduce stringency, Low salt concentration enhance stringency.
    + <u>A high concentration of salt</u> (such as NaCl) <u>raises the Tm</u> of a DNA duplex, because the positive Na+ ions shield the <u>negative charges on the phosphodiester backbone from repelling each other</u> 
    + <u>High salt decrease the stringency</u> & Low salt increase the stringency – of hybridization
      + Oppose to the protein-protein interaction
  + Solvent
    + **Organic Solvent**: DMSO, DMF, Formamide etc, certain organic solvents can cause the negative charges on the phosphates to repel more strongly, thus <u>reducing the Tm.</u> 
    + Create hydrophobic environment $\rarr$ de-stable hydrogen bonds

---

Blotting techniques have been widely employed for more than 30 years and have provided the foundation of our understanding of molecular biology.

+ However, these techniques have been largely—and in some cases completely— usurped by new technologies .especially the next generation sequencing techniques

Southern blots have been replaced by multiple techniques.

1. **Real-time PCR**: boasts incredible sensitivity; theoretically, this method is able to detect even a single copy of the target sequence and compare relative copy numbers across samples rapidly and reliably, with little technical expertise required
2. **Fluorescent *in situ* hybridization (FISH)** allows detection of specific sequences within a tissue sample with high sensitivity and precise localization

Northern blots have given way to **reverse-transcription real-time PCR**, again a more sensitive and more user-friendly technique.

# 三、Labeling methods of Nucleic Acid

Radioactive and non-radioactive labelling

+ Radioactive labelling: **Unbeatable sensitivity**, Common radioactive isotope used in in molecular biology: ^32^P, ^3^H, ^125^I, ^35^S. ^14^C.

<img src="https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/Academic_Notes/Genetic%20Engineering/image-20201018154101724.png" alt="image-20201018154101724" style="zoom:67%;" />

+ Gamma-^32^P ATP used in the End Labelling
+ Alpha- ^32^P dNTP can be used in any elongation reaction mediated by polymerase

<img src="https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/Academic_Notes/Genetic%20Engineering/image-20201018154109739.png" alt="image-20201018154109739" style="zoom:50%;" />

<img src="https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/Academic_Notes/Genetic%20Engineering/image-20201018154116713.png" alt="image-20201018154116713" style="zoom:67%;" />

![image-20201018154123396](https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/Academic_Notes/Genetic%20Engineering/image-20201018154123396.png)

## Common labeling methods of Nucleic Acid

+ End labelling 末端标记
+ Nick translation 切口平移
+ Primer extension 引物延伸
+ PCR labeling

### 1. 5' End Labeling

<img src="https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/Academic_Notes/Genetic%20Engineering/image-20201018154622953.png" alt="image-20201018154622953" />

+ AP: Alkaline phosphatase 碱性磷酸酶
+ PNK: Polynucleotide Kinase 多聚核苷酸激酶
  + Highly efficient, accurate
  + Specific activity is relatively low (因为只标记了末端，中间部分没有标记)

### 2. Nick Translation

![image-20201018154807551](https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/Academic_Notes/Genetic%20Engineering/image-20201018154807551.png)

Nick: Low concentration of **DNase I** breaks the DNA strand, remove one nucleotide and leaves 5’ P and 3’ OH.

+ *E.coli* DNA polymerase I <u>has 5’ to 3’ exonuclease activity Polymerase activity</u>
+ One strand is degraded and replaced by an newly synthesized strand

Produce relatively short DNA(Radioactively labelled).

+ Need lots of templates (no amplification)
+ Accurate – amplification free
+ Label both strand 可以实现对两条链都进行标记

### 3. Primer extension 

![image-20201018155029409](https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/Academic_Notes/Genetic%20Engineering/image-20201018155029409.png)

1. DNA is denatured to give single-stranded molecules.
2. An oligonucleotide primer is then added to give a short double-stranded region with a free 3-OH group. 
3. The **Klenow fragment** of DNA polymerase I can then synthesize a copy of the template strand from the primer, incorporating [α-^32^P]DNTP(solid circles)to produce a labelled molecule with a very high specific activity

Primer；

+ Klenow fragment
  + Strand-specific
  + High specific activity 

### 4. Random prime Labeling

![image-20201018155103826](https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/Academic_Notes/Genetic%20Engineering/image-20201018155103826.png)

在DNA单链条件下，加入随机的（并不局限于特定序列的）引物，进行扩增。最终实现标记。

## Non-radioactive labeling

+ **Digoxigenin**-11-dUTP Anti-DIG-AP
+ **Biotin**-11-dUTP Streptavidin-HRP
+ **Cy3/Cy5** – UTP Excitation-Emission
+ 这些方法适用于copy数高，表达量高的基因

<img src="https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/Academic_Notes/Genetic%20Engineering/image-20201018155220833.png" alt="image-20201018155220833" style="zoom:67%;" />

<img src="https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/Academic_Notes/Genetic%20Engineering/image-20201018155233565.png" alt="image-20201018155233565" style="zoom:67%;" />

## Detection of signal after hybridization

![image-20201018155301313](https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/Academic_Notes/Genetic%20Engineering/image-20201018155301313.png)

+  ^32^P mainly emit beta particles
+  This can be detected by **X-ray film** or The phosphor screen 
   + Phosphor screen can stably absorb energy and then release it upon laser stimulation
+ Fluorescence is often being detected if nonradioactive labelling method is used

---

# Summary

Handling and Quantification of DNA/RNA

+ Absorbance vs Fluorescence based – OD260/280, OD260/230 Electrophoresis (Pros and Cons of different matrix)

Nucleic acids hybridization – different blotting techniques

+ Southern/Northern blot/Western, Principle of hybridization (Idea of stringency), Type of Membrane, Alkaline Denaturation/Hydrolysis

Labeling methods of Nucleic Acid

+ Radioactive VS Non-radioactive – common isotopes – common labeling methods –Signal detections.