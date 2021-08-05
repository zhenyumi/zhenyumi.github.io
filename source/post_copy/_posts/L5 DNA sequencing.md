---
title: L5 DNA sequencing
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
abbrlink: dd37126d
date: 2020-11-11 08:33:51
updated: 2020-11-11 08:33:54
excerpt: 2020-11-11 08:33:54
---

First generation sequencing

1. Maxam & Gilbert Sequencing
2. Sanger Sequencing 

Next-generation sequencing/high-through put sequencing 

1. Illumina (Solexa) sequencing
2. Roche 454 sequencing
3. Ion torrent: Proton / PGM sequencing 
4. SOLiD sequencing

Third/Fourth generation sequencing 

1. PACBIO sequencing
2. Nanopore sequencing

# 一、Maxam-Gilbert Sequencing

It is a method by which the sequence of a DNA **fragment** is identified by using chemicals, which means cut DNA at specific points. 

+ Also called **Chemical degradation** method of DNA sequencing

## Procedure

<img src="https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/Academic_Notes/Genetic%20Engineering/image-20201021223125457.png" alt="image-20201021223125457" style="zoom:67%;" />

+ E.g it is a fragment of double stranded DNA, and you do not know its sequence

**Step:1, Alkaline denaturation of dsDNA**

<img src="https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/Academic_Notes/Genetic%20Engineering/image-20201021223150034.png" alt="image-20201021223150034" style="zoom:67%;" />

+ At first, the double stranded fragment is separated into two single strands by applying **high Temperature** or **high PH**.

---

**Step :2 Separate two strand on gel** 

Run the single stranded fragments on gel. 

+ As lighter fragment band will move further than the heavy fragment band

**How will we know which one is the lighter** **band?**

+ The band having larger number of purines (A,G) would be heavier.

<img src="https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/Academic_Notes/Genetic%20Engineering/image-20201021223318547.png" alt="image-20201021223318547" style="zoom:67%;" />

+ **Fig: Single stranded DNA fragments in Gel Electrophoresis gel.**

---

**Step :3, Radioactive end labeling of ssDNA**

Take one of fragment band from the gel

![image-20201021223340198](https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/Academic_Notes/Genetic%20Engineering/image-20201021223340198.png)

Remove the Phosphate at 5′ end and incorporate radioactive 32-PO4 enzymatically.

---

**Step 4: Chemical Degradation**

Now let’s put isolated and end-labelled ssDNA into four tubes

<img src="https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/Academic_Notes/Genetic%20Engineering/image-20201021223438541.png" alt="image-20201021223438541" style="zoom: 50%;" />

+ **Tube 1** : Increase Temperature and PH(by adding NAOH), that would cause fragments to break down. Dimethyl sulfate will be added that would make cuts at **Adenine** and **Guanine** positions.
+ **Tube 2**: Dimethyl sulfate and dilute HCL will be added that would cuts the fragment at **Adenine** position
+ **Tube 3**: Reagents Hydrazine and Piperidine are added that would cuts the fragment at position **Cytocine** and **Thymine**
+ **Tube 4**: In the last tube, Hydrazine, Piperdine and NACL is added that would cuts the fragment at **Cytocine** position

After chemical degradation, we would get following radioactively labelled fragments from each tube

<img src="https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/Academic_Notes/Genetic%20Engineering/image-20201021223913668.png" alt="image-20201021223913668" style="zoom:50%;" />

<img src="https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/Academic_Notes/Genetic%20Engineering/image-20201021224105596.png" alt="image-20201021224105596" style="zoom:50%;" />

<img src="https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/Academic_Notes/Genetic%20Engineering/image-20201021223125457.png" alt="image-20201021223125457" style="zoom:67%;" />

<img src="https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/Academic_Notes/Genetic%20Engineering/image-20201021224116198.png" alt="image-20201021224116198" style="zoom: 33%;" />

<img src="https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/Academic_Notes/Genetic%20Engineering/image-20201021224126346.png" alt="image-20201021224126346" style="zoom:50%;" />

---

**Step 5: Gel electrophoresis**

![image-20201021224150565](https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/Academic_Notes/Genetic%20Engineering/image-20201021224150565.png)

+ All of the fragments from each four tubes are pour in Gel. 
+ Four wells will be make on Gel with each tube of the samples running into one well. 
+ Fragments would separate on Gel according to size. 
+ After placing X ray film on top of gel, radioactive labelled fragments would emit a band at their position

## Advantages

1. Directly read purified DNA.
2. Used sequence heterogenous DNA as well as Homopolymeric sequences.
3. used to analyze DNA-Protein interaction.
4. Used to analyze Epigenetic modification and nucleic acid structure.

## Disadvantages

1. Use of toxic chemicals and extensive use of radioactive isotopes. highly poisonous and unstable
2. Cannot read more than 500bp
3. Setup is quite complex. (Chemical digestion, Gel running, radioisotope, time consuming)
4. It is difficult to make Maxam-Gilbert DNA sequencing kit. (Hard to commercialize)
5. Read size decrease with incomplete cleavage reactions.

Why Maxam-Gilbert sequencing is now extinct ?

+ Even though Sanger sequencing is still widespread, Maxam-Gilbert sequencing has been forgotten. So, you may be surprised to know that when both methods were discovered, <u>Maxam-Gilbert was the most popular. This was because scientists could use purified DNA directly, while the initial Sanger method required cloning for the start of each read</u>
+ This method, although based on very simple principles, came with a whole lot of trouble. First, it was time consuming. And that was supposing that everything went well on the first try. <u>A lot of steps in the method could cause problems</u>: the radioactive labeling process, the cleavage reactions, the gel set up, the electrophoresis, and the X-ray film developer. Using this method you could only confirm about 200–300 bases of DNA every few days!
+ Maxam-Gilbert sequencing also required working with large amounts of radioactive material and working closely with <u>hydrazine, which is a known neurotoxin</u>. The development of other techniques, and the simplification of Sanger sequencing, caused chemical sequencing to lose its appeal. With the birth of next-generation sequencing, Maxam-Gilbert sequencing is almost extinct and many are claiming the same will happen to Sanger sequencing.

# 二、Sanger Sequencing

## Principles

Sanger sequencing: <u>Chain-terminating method</u> of DNA sequencing

**Dideoxy nucleotide** mediated chain-terminating method

+ 2',3'-dideoxynucleotide triphosphate (**ddNTPs**)

<center><img src="https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/Academic_Notes/Genetic%20Engineering/image-20201021224746747.png" alt="image-20201021224746747" style="zoom:80%;" /> <img src="https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/Academic_Notes/Genetic%20Engineering/image-20201021224908875.png" alt="image-20201021224908875" style="zoom:100%;" /> </center> 

They terminate DNA chain elongation as…

+ <u>Cannot form a phosphodiester bond with the next deoxynucleotide</u>
+ ddNTPs are the terminator molecules…

Each ddNTP has label for different color fluorescence

### 1. Ingredients for Sanger Sequencing

1. The <u>**template**</u> DNA to be sequenced
2. A **<u>DNA polymerase</u>** enzyme – A thermo stable form of DNA polymerase, enable doing cycles of reaction in PCR machine.
3. The **<u>primer</u>**, which is a short piece of single-stranded DNA that binds to the template DNA and acts as a "starter" for the polymerase 
4. The four **<u>DNA nucleotides</u>** (dATP, dTTP, dCTP, dGTP)
5. Dideoxy, or **<u>chain-terminating</u>**, versions of all four nucleotides (<u>ddATP, ddTTP, ddCTP, ddGTP</u>), each labeled with a different color of dye
6. Proportion of the dNTPs and ddNTPs is **<u>100 : 1, Why?</u>**
   + Means that 1% of the ddNTPs are fluorescence labeled terminator molecules
   + If more ddNTPs are included into the reaction, the majority of the growing DNA chain would terminate quickly, reduce the ability to get signal <u>from long enough reads.</u>
     + About 500 bp is maximal

### 2. The Machine Used in Sanger Sequencing

ABI377:

<img src="https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/Academic_Notes/Genetic%20Engineering/image-20201021225644070.png" alt="image-20201021225644070" style="zoom: 25%;" />

<img src="https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/Academic_Notes/Genetic%20Engineering/image-20201021225653363.png" alt="image-20201021225653363" style="zoom: 50%;" />

**ABI3730, high-throughput Sanger sequencing** :

![image-20201021225711008](https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/Academic_Notes/Genetic%20Engineering/image-20201021225711008.png)

![image-20201021225715887](https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/Academic_Notes/Genetic%20Engineering/image-20201021225715887.png)

Many Systems for Sanger Automation:

![image-20201021225729395](https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/Academic_Notes/Genetic%20Engineering/image-20201021225729395.png)

# 一、Next Generation Sequencing

## Illumina

Typical Illumina Setup:

<img src="https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/Academic_Notes/Genetic%20Engineering/image-20201021225826446.png" alt="image-20201021225826446" style="zoom: 33%;" />

Illumina Outline: The key steps

1. Making a sequencing Library
2. Cluster generation
3. Sequence by synthesis (SBS)
4. Data analysis

![image-20201021225908181](https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/Academic_Notes/Genetic%20Engineering/image-20201021225908181.png)

## Key Steps

### 1. Making a Sequencing library

<img src="https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/Academic_Notes/Genetic%20Engineering/image-20201021225925017.png" alt="image-20201021225925017" style="zoom: 50%;" />

<img src="https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/Academic_Notes/Genetic%20Engineering/image-20201021225930245.png" alt="image-20201021225930245" style="zoom: 67%;" />

Making a sequencing Library: The key steps

1. Add sequencing adaptors to the both end of insert DNA (target DNA).
2. The sequencing adaptor enables PCR amplification of the library.
3. The sequencing adaptor enables anchoring of the library to the flow cell and the following cluster generation

### 2. Cluster generation

1. Apply the library to the flowcell.
2. Cluster generation by solid phase PCR (bridge amplification)
3. Each single molecule of DNA in the original sequencing library form a “cluster” on the surface of the flowcell through amplification. (1 million copy of original copy)

### 3. Sequence by synthesis (SBS)

![image-20201021230120169](https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/Academic_Notes/Genetic%20Engineering/image-20201021230120169.png)

1. Fluorescent labeled Reversible terminators are incorporated into the growing DNA chain
2. Only a single fluorescent color is used, so each of the four bases must be added in a separate cycle of DNA synthesis and imaging
3. Imaging to record the signal
4. Next nucleotide is then being added.

### 4. Data analysis

![image-20201021230620472](https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/Academic_Notes/Genetic%20Engineering/image-20201021230620472.png)

<img src="https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/Academic_Notes/Genetic%20Engineering/image-20201021230627490.png" alt="image-20201021230627490" style="zoom: 25%;" />

+ Initial Data QC
+ Processing of raw data (remove low quality reads and trim adaptor, remove PCR duplicate, etc)
+ Mapping to the reference genome
+ Downstream analysis

## Comparison to Sanger Sequencing

|                | Sanger Sequencing                                            | NGS (Next Generation Sequencing)                             |
| -------------- | ------------------------------------------------------------ | ------------------------------------------------------------ |
| **Benefits**   | 1. Fast, cost-effective sequencing for low numbers of targets (1–20 targets)<br />2. Custom friendly<br />3. Accurate<br />4. Long read length (500bp) | 1. Higher sequencing depth enables higher sensitivity (down to 1%)<br />2. Higher mutation resolution<br />3. More data produced with the same amount of input DNA<br />4. Higher sample throughput |
| **Challenges** | 1. Low sensitivity (limit of detection ~15–20%)<br />2. Not as cost-effective for high numbers of targets (> 20 targets)<br />3. Low scalability due to increasing sample input requirements | 1. Less cost-effective for sequencing low numbers of targets (1–20 targets)<br />2. Time-consuming for sequencing low numbers of targets (1–20 targets) |

# 四、Third Generation Sequencing - Long Read Sequencing

Third generation sequencing- long read sequencing

Third-generation sequencing (also known as long-read sequencing) is a class of <u>DNA sequencing</u> methods currently under active developments

Since eukaryotic genomes contain many <u>repetitive regions</u>, a major limitation to sanger or illumina sequencing methods is the length of reads it produces.

<img src="https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/Academic_Notes/Genetic%20Engineering/image-20201021231035921.png" alt="image-20201021231035921" style="zoom: 25%;" />

## PACBIO: Pacific Bioscience sequencing

![image-20201021231103479](https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/Academic_Notes/Genetic%20Engineering/image-20201021231103479.png)

+ SMRT(Single-Molecule Real Time Sequencing)

Zero-mode waveguides:

![image-20201021231121500](https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/Academic_Notes/Genetic%20Engineering/image-20201021231121500.png)

SMRT flow cell, there are thousands of tiny pores called zero-mode waveguides (ZMWs)

Each ZMW represents one reaction chamber and at the bottom of the chamber sits (immobilized) the DNA polymerase machinery.

The pore size (~70nm in diameter, 100nm in depth) is too small for light to pass through easily, thus creating an observation volume that is small enough to observe only a single nucleotide being incorporated and each base is added

Sequence by synthesize. The fluorescent tags are cleaved-off after the incorporation of the nucleotide

work like a giant microscope that can literally “see” DNA synthesis in real time! 1000bp/sec

Can read 20kb long reads. But with lower input and more expensive

+ 80Gbp (20kb/read) = 4x10^6 reads = 4 million reads for the whole flow cell.
+ 120Gbp (200bp/read) = 120X10^9/ 2x10^2 = 600 Million reads for the whole flow cell

![image-20201021231238834](https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/Academic_Notes/Genetic%20Engineering/image-20201021231238834.png)

## Nanopore Sequencing

<img src="https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/Academic_Notes/Genetic%20Engineering/image-20201021231255177.png" alt="image-20201021231255177" style="zoom:67%;" />

![image-20201021231309373](https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/Academic_Notes/Genetic%20Engineering/image-20201021231309373.png)

+ A protein nanopore is set in an electrically resistant polymer membrane. An ionic current is passed through the nanopore by setting a voltage across this membrane. If an analyte passes through the pore or near its aperture, this event creates a characteristic disruption in current (as shown in the diagram below). Measurement of that current makes it possible to identify the molecule in question

![image-20201021231325388](https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/Academic_Notes/Genetic%20Engineering/image-20201021231325388.png)

**Nanopore**

+ A protein nanopore is set in an electrically-resistant polymer membrane

**Array of microscaffolds**

+ Each microscaffold supports a membrane and embedded nanopore. The array keeps the multiple nanopores stable during shipping and usage

**Sensor chip**

+ Each microscaffold corresponds to its own electrode that is connected to a channel in the sensor array chip. Sensor arrays may be manufactured with any number of channels

![image-20201021231359331](https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/Academic_Notes/Genetic%20Engineering/image-20201021231359331.png)

The idea of sample multiplexing:

![image-20201021231407182](https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/Academic_Notes/Genetic%20Engineering/image-20201021231407182.png)

Multiplex Sequencing Highlights

+ **Fast High-Throughput** **Strategy:** Large sample numbers can be simultaneously sequenced during a single experiment
+ **Cost-Effective Method:** Sample pooling improves productivity by reducing time and reagent use
+ **Simplified Analysis:** Automatic sample identification with "barcodes" using Illumina data analysis softwares

# Comparing different sequencing strategies

| Sanger Sequencing First generation                           | Illumina sequencing Second generation                        | PACBIO sequencing Third generation                           | Nanopore sequencing Fourth generation                        |
| ------------------------------------------------------------ | ------------------------------------------------------------ | ------------------------------------------------------------ | ------------------------------------------------------------ |
| 1. Dideoxy chain termination<br />2. Accurate<br />3. No signal amplification<br />4. Long read length 500bp<br />5. Cheap and practical for normal gene cloning | 1. Sequencing by synthesis (Cluster generation/reversible Terminator/imaging are innovations)<br />2. Involve amplification, accurate at bulk level (not accurate on individual reads)<br />3. Highest through-put so far<br />4. Relatively short read length (100-300bp)<br />5. Ideal for genomic studies | 1. Sequencing by synthesis<br />2. Anchor the DNA polymerase on chip<br />3. Long read length (20Kb) due to no amplification, improved imaging technique and rolling cycle sequencing of same molecule<br />4. Not as high through-put but can provide valuable information<br />5. Often combined with illumina-seq | 1. Direct sequencing DNA or RNA molecule<br />2. In theory no limit on DNA length<br />3. Smallest instrument<br />4. Lowest instrument cost<br />5. Highest error rates<br />6. Often combined with illumina-seq |

