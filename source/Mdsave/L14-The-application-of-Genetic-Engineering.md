---
title: L14 The application of Genetic Engineering
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
excerpt: Gene Therapy - CRISPR and AAV
abbrlink: 1e1174e2
date: 2021-01-08 18:37:06
updated: 2021-01-08 18:37:06
---

# 一、Genome Editing – The principle of CRISPR system 

Genome editing pre-CRISPR: The development

<img src="https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/Academic_Notes/Genetic%20Engineering/image-20210105014519853.png" alt="image-20210105014519853" style="zoom:100%;" />

## General principles

Editing the genome using

+ Homology directed Repair(HDR) 同源定向修复
+ Non Homologous End Joining (NHEJ) 非同源端链接
+ Early approaches（早期方法）: modifying genetic sequences using only homologous recombination.

## NHEJ & HDR

### 1. Homology directed repair (HDR)

Mechanism in cells to repair **double strand DNA lesions**

+ The most common form homologous recombination
+ Only used by the cell when there is a homologue piece of DNA present in the nucleus
  Mostly in G2 and late S phase
+ Important for suppressing cancer

maintains genomic stability by repairing broken DNA strands

+ Assumed to be error free because of the use of a template

### 2. Non-homologous end joining (**NHEJ**)

Repairs double-strand breaks in DNA in the absence of homologous templates

+ Occurs in G0/G1 and early S-phases

non-homologous: the break ends directly ligated

> non-homologous end joining: Moore and Haber(1996)
>
> utilizes short homologous DNA sequences called microhomologies to guide repair
>
> + Imprecise repair when the overhangs are not compatible

Lead to translocations and telomere fusion: hallmarks of tumor cells

---

<img src="https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/Academic_Notes/Genetic%20Engineering/image-20210105014747219.png" alt="image-20210105014747219" style="zoom:100%;" />

<img src="https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/Academic_Notes/Genetic%20Engineering/image-20210105014755008.png" alt="image-20210105014755008" style="zoom:100%;" />

## CRISPRs

Clustered Regularly Interspaced Short Palindromic Repeats

Genetic elements that bacteria use as a kind of acquired immunity to protect against viruses

### 1. How CRISPRs Works ?

#### STAGE 1: Foreign DNA acquisition

Foreign nucleic acids are recognized by **Cas proteins**, and short fragments (30–50 base pairs) of invading DNA, called **protospacers**, <u>are inserted into the host’s CRISPR locus</u> as spacer sequences, <u>separated by repeat sequences.</u> 

<u>In type I and II systems, protospacers are selected from regions of invading DNA that are flanked by a 2–5 nucleotide (nt) motif called a PAM (protospacer adjacent motif) (Sorek et al., 2013).</u> 

Protospacers are generally incorporated at one end of the CRISPR locus, referred to as the leader, by a mechanism that involves Cas1, Cas2, and free 3’ hydroxyls on the protospacer (Nuñez et al., 2015). 

+ Protospacer integration is accompanied by the duplication of the leader-terminal repeat sequence, which may involve host polymerases and DNA repair machinery

**Protospacer & PAM** (sequence that being selected from invader phage genome). 

<img src="https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/Academic_Notes/Genetic%20Engineering/image-20210105014953469.png" alt="image-20210105014953469" style="zoom:100%;" />

#### Stage 2. crRNA Biogenesis

CRISPR RNA biogenesis starts with transcription, followed by processing of the primary transcript (pre-crRNA) into a library of short **CRISPR-derived RNAs (crRNAs)** that each contains a sequence complementary to a previously encountered foreign DNA

The <u>crRNA-guide sequence is flanked by regions</u> of the adjacent repeats. CRISPR RNA processing in type II systems relies on **a trans-acting crRNA (tracrRNA)**, <u>which contains a sequence that is complementary to the repeat sequences</u>. These double-stranded regions are processed by RNase III while in the presence of Cas9.

In **type II systems**, both the tracrRNA and the crRNA are required for target interference. <u>The two RNAs from this system have been fused into a single-guide RNA (sgRNA),</u> and Cas9 has become a powerful tool for targeted genome engineering in a wide variety of cell types and multicellular organisms.

<img src="https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/Academic_Notes/Genetic%20Engineering/image-20210105015556651.png" alt="image-20210105015556651" style="zoom: 50%;" />

<img src="https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/Academic_Notes/Genetic%20Engineering/image-20210105015604731.png" alt="image-20210105015604731" style="zoom:100%;" />

#### Stage 3. Target Interference

The mature crRNAs guide Cas proteins to complementary targets. 

Target sequences are degraded by dedicated Cas nucleases, but the mechanisms of target degradation are diverse

Type I and II systems both target dsDNA substrates that contain a PAM and a complementary protospacer sequence.

Target cleavage in type II systems is performed by a single protein (Cas9) and two RNAs.

Type I & Type III systems rely on multi-subunit surveillance complexes that bind and cut the dsDNA substrates.

<img src="https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/Academic_Notes/Genetic%20Engineering/image-20210105015701755.png" alt="image-20210105015701755" style="zoom:100%;" />

<img src="https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/Academic_Notes/Genetic%20Engineering/image-20210105015708957.png" alt="image-20210105015708957" style="zoom:100%;" />

Principles

+ R-loop formation between target DNA and sgRNA which is bound by Cas9
+ Cas9 mediated formation of DNA double stranded break.
+ DSB is healed by NHEJ pathway, accompanied with high chance of error formation (short insertion or deletion, INDELs)
+ In the presence of homologous DNA, HDR mediated repair (homologous recombination) can happen.

Problem: 

+ High off-target rate
+ High rate of unwanted mutation in the target gene.

Cas9 base editors – an example with increased precision of editing:

<img src="https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/Academic_Notes/Genetic%20Engineering/image-20210105015820098.png" alt="image-20210105015820098" style="zoom:100%;" />

+ This is the simplest version, additional elements enable increased efficiency

High efficiency precision editing with base editing:

<img src="https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/Academic_Notes/Genetic%20Engineering/image-20210105015845187.png" alt="image-20210105015845187" style="zoom:100%;" />

<img src="https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/Academic_Notes/Genetic%20Engineering/image-20210105015855016.png" alt="image-20210105015855016" style="zoom:100%;" />

# 二、Gene Therapy – AAV mediated Gene Therapy

## Do we have the right to change ourselves ?

In 1991, James Watson declared that “many people say they are worried about the changes in our genetic instructions. But these (genetic instructions) are merely a product of evolution, shaped so we can adapt to certain conditions which might no longer exist. We all know how imperfect we are. Why not become a little better apt to survive?”

## The Development of Gene Therapy

<img src="https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/Academic_Notes/Genetic%20Engineering/image-20210105020757789.png" alt="image-20210105020757789" style="zoom:100%;" />

In vivo & Ex vivo:

<img src="https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/Academic_Notes/Genetic%20Engineering/image-20210105020818794.png" alt="image-20210105020818794" style="zoom:100%;" />

<img src="https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/Academic_Notes/Genetic%20Engineering/image-20210105020840835.png" alt="image-20210105020840835" style="zoom:100%;" />

Viral-based System:

1. Retrovirus
   + RNA genome, usually used with cDNA. requires proliferating cells for incorporation of the transgene into the nuclear material Not specific for one cell type and can activate cellular oncogenes.
2. Adenoviruses
   + Double-stranded DNA genome, virus infects respiratory and gastrointestinal tract cells. thus effective in non-or slowly dividing cells, Generally provokes a strong immune response
3. Adeno-associated viruses
   + Replication-defective, thus requires helper virus. Some benefits over adenoviral systems: may show chromosome-specific integration of transgene

Non-viral based system:

1. Liposomes
   + System based on lipid micelles that encapsulate the DNA. Some problems with size, as micelles are generally small and may restrict the amount of DNA encapsulated Inefficient compared to viral systems.
2. Lipoplexes
   + Benefits over liposomes include increased efficiency due to charged groups present on the constituent lipids. Nonimmunogenic, so benefits compared to viral Systems
3. Naked DNA
   + Inefficient uptake but may be useful in certain Cases

Tragedy motivates shift toward safer delivery:

<img src="https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/Academic_Notes/Genetic%20Engineering/image-20210105020854503.png" alt="image-20210105020854503" style="zoom:100%;" />

## Adeno-Associated Virus (AAV)

Adeno-Associated Virus is a small non-replicative virus (dependovirus genus)

<img src="https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/Academic_Notes/Genetic%20Engineering/image-20210105020918341.png" alt="image-20210105020918341" style="zoom:100%;" />

+ They are small (20 nm) replication-defective, nonenveloped viruses and have linear single-stranded DNA (ssDNA) genome of approximately 4.8 kilobases (kb).

## Adapting AAV for gene delivery

<img src="https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/Academic_Notes/Genetic%20Engineering/image-20210105020945682.png" alt="image-20210105020945682" style="zoom:100%;" />

## Advantages and drawbacks of using AAV in Gene therapy

• AAV is currently most promising vector for human gene therapy (In-vivo).

**Benefits:**

+ Lack of pathogenicity and very low immunogenicity
+ Can infect both dividing and non-dividing cells with high efficiency
+ Has the ability to integrate into specific site – Chromosome 19. 
+ When used in gene therapy, the integrative capacity of AAV is often removed.
  + After infection, AAV can form concatemer which can stably exist and express containing gene for the whole life cycle of the infected cell.

**Drawbacks:**

+ The cloning capacity of the vector is relatively limited

<img src="https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/Academic_Notes/Genetic%20Engineering/image-20210105021159042.png" alt="image-20210105021159042" style="zoom:100%;" />

## Gene therapy for Leber’s Congenital Amaurosis (LCA)

<img src="https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/Academic_Notes/Genetic%20Engineering/image-20210105021248445.png" alt="image-20210105021248445" style="zoom: 50%;" />

Payload: RPE65 (Retinoid somerohydrolase, makes retinol

Results in loss of vision then blindness during childhood

+ Prevalence: 1 in 200.000

Subretinal AAV2 delivery

+ Dose: 1.5el1vgeye in 0. 3ml rednisone 3 days prior and 7 days after iniection
+ Spark Therapeutics,
+ 850,000 USD per treatment

## Selected AAV trials

![image-20210105021356610](https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/Academic_Notes/Genetic%20Engineering/image-20210105021356610.png)

<img src="https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/Academic_Notes/Genetic%20Engineering/image-20210105021428951.png" alt="image-20210105021428951" style="zoom:100%;" />

In vivo genome editing with AAV:

<img src="https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/Academic_Notes/Genetic%20Engineering/image-20210105021442305.png" alt="image-20210105021442305" style="zoom:100%;" />

## SUMMARY

In vivo gene therapy delivers a genetic payload into your body’s cells

Viral capsids are efficient machines for *in vivo* delivery

AAV capsids enables *in vivo* disease treatment

+ LCA, SMA, DMD, and many more…

Gene therapy field has consolidated around AAV technology

Early gene therapies are a roadmap for translation of in vivo genome editing therapies

+ With innovations on payloads and delivery, <u>curing all genetic diseases is within reach in our lifetime</u>