---
title: L17 Cell communication via enzyme-coupled receptors
tags:
  -  Cell Biology
categories:
  -  Academic Notebook
  -  Cell Biology
author: 向海
index_img: >-
 https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/Academic_Notes/Cell_Biology/Cell_Biology_01.jpg
banner_img: >-
 https://hexo20200628-1259353497.cos.ap-guangzhou.myqcloud.com/Articles/Academic_Notes/Cell_Biology/Cell_Biology_02.png
top: false
math: true
comments: true
hide: false
abbrlink: 1362cf09
date: 2020-07-18 18:49:00
updated: 2020-07-18 18:49:00
---

## Enzyme-coupled cell surface receptors

> Like GPCRs, **enzyme-coupled receptors** are transmembrane proteins with their ligand-binding domain on the <u>outer surface</u> of the plasma membrane
>
> Instead of having a **cytosolic domain** that associates with a trimeric G protein, however, their cytosolic domain either has **intrinsic enzyme activity** or **associates directly with an enzyme**. Whereas a GPCR has <u>seven</u> transmembrane segments, each subunit of an enzyme-coupled receptor typically has only <u>one</u>.

All these receptors are **single** transmembrane receptors, which are either an enzyme themselves or are directly associated with an enzyme.

Enzyme-coupled receptors are divided as follows: 

1. Receptor tyrosine kinases (RTKs)
2. Receptors without enzyme activity but are coupled to cytoplasmic tyrosine kinase
3. Receptor Ser/Thr kinases
4. Cytokine receptors that activates JAK-STAT signaling: cytokines, growth hormones etc..
5. Cytokine receptors that activates NF$\kappa$B signaling:
6. Histidine-kinase-associated receptors

# 一、Receptor tyrosine kinases (RTKs) and downstream signaling 

> Many extracellular signal proteins act through **receptor tyrosine kinases (RTKs)**. These include many **secreted** and **cell-surface-bound proteins** that control cell behavior in developing and adult animals.

## Signaling via RTKs

<img src="https://20190531-1259353497.cos.ap-guangzhou.myqcloud.com/Cell%20Biology/image-20200708195645624.png" alt="image-20200708195645624" style="zoom:100%;" />
| Signal protein family      | Receptor family | Some representative responses        |
|  - ----------------------------------------- - |  - -------------- - |  - ---------------------------------------------------------- - |
| Epidermal growth factor (EGF)    | EGF receptors | Stimulates cell survival, growth, proliferation, or differentiation of various cell types; acts as inductive signal in development |
| Insulin          | Insulin receptor | Stimulates carbohydrate utilization and protein synthesis |
| Insulin-like growth factor (IGF1)   | IGF receptor-1 | Stimulates cell growth and survival in many cell types  |
| Nerve growth factor (NGF)     | Trk receptors | Stimulates survival and growth of some neurons    |
| Platelet-derived growth factor (PDGF)  | PDGF receptors | Stimulates survival, growth, proliferation, and migration of various cell types |
| Macrophage-colony-stimulating factor (MCSF) | MCSF receptor | Stimulates monocyte/macrophage proliferation and differentiation |
| Fibroblast growth factor (FGF)    | FGF receptors | Stimulates proliferation of various cell types; inhibits differentiation of some precursor cells; acts as inductive signal in development |
| Vascular endothelial growth factor (VEGF) | VEGF receptors | Stimulates angiogenesis          |
| Ephrin          | Eph receptors | Stimulates angiogenesis; guides cell and axon migration  |

> For most RTKs, ligand binding causes the receptors to **dimerize**, bringing the two cytoplasmic kinase domains together and thereby <u>promoting their activation</u>
>
> Receptor for **epidermal growth factor (EGF)**, the kinase is <u>not activated by phosphorylation</u> but by <u>conformational changes</u> brought about by interactions between the two kinase domains outside their active sites

## Domain structure of some RTKs

<img src="https://20190531-1259353497.cos.ap-guangzhou.myqcloud.com/Cell%20Biology/image-20200708195657596.png" alt="image-20200708195657596" style="zoom:100%;" />
RTKs are **single** transmembrane receptors.

RTKs are kinases themselves and possess three domains:

+ Extracellular region: interact with ligand
+ One single transmembrane domain
+ Intracellular region: tyrosine kinase activity

Human genome encodes ~ **60** RTK genes

Upon ligand binding, RTK usually **dimerize** and **trans-autophosphorylate** themselves

## Activation of RTKs

> Phosphorylated Tyrosines on RTKs Serve as Docking Sites for Intracellular Signaling Proteins
>
> Once the **kinase domains** of an RTK dimer are <u>activated</u>, they phosphorylate multiple <u>additional sites in the cytosolic parts</u> of the receptors, typically in disordered regions outside the kinase domain
>
> + This phosphorylation creates **high-affinity docking sites** for intracellular signaling proteins
>
> Once bound to the activated RTK, a signaling protein may become <u>phosphorylated on tyrosines</u> and thereby activated. In many cases, however, the <u>binding alone</u> may be sufficient to activate the docked signaling protein, by either <u>inducing a conformational change</u> in the protein or simply <u>bringing it near</u> the protein that is next in the signaling pathway.

<img src="https://20190531-1259353497.cos.ap-guangzhou.myqcloud.com/Cell%20Biology/image-20200708195809484.png" alt="image-20200708195809484" style="zoom:100%;" />
Phosphorylation on RTK has **dual roles**: 

+ Activates RTK kinase activity 
+ Introduce phospho-Tyr that can <u>recruit</u> other protein factors to relay signals through <font color="EE0000">SH2</font>, <font color="EE0000">PTB</font> (phospho-Tyr binding) domain, or <font color="EE0000">SH3</font> (Pro-rich Binding) domains, etc.

> Some RTKs use **additional docking proteins** to enlarge the signaling complex at activated receptors.
>
> + Insulin and <font color="EE0000">**IGF1**</font> receptor signaling, for example, depend on a specialized docking protein called **insulin receptor substrate 1 (<font color="EE0000">IRS1</font>)**
> + **IRS1** associates with **phosphorylated tyrosines** on the activated receptor and is then <u>phosphorylated at multiple sites</u>, thereby creating many more docking sites than could be accommodated on the receptor alone

### 1. Mutant RTKs can act in a dominant negative manner 

<img src="https://20190531-1259353497.cos.ap-guangzhou.myqcloud.com/Cell%20Biology/image-20200708200044974.png" alt="image-20200708200044974" style="zoom:100%;" />
Dominant negative (DN) mutant: 

+ a mutant protein that exhibits an inhibitory effect on the wild type protein
+ mutant 使得功能丧失

### 2. Signaling pathways downstream of RTKs: the Ras signaling pathway

> The GTPase **Ras** Mediates Signaling by Most RTKs
>
> The **Ras** superfamily consists of various families of monomeric GTPases, but only the <font color="EE0000">Ras</font> and <font color="EE0000">Rho</font> families relay signals <u>from cell-surface receptors</u>
>
> + **Ras** is often required, for example, when <u>RTKs signal to the nucleus</u> to stimulate **cell proliferation** or **differentiation**, both of which require changes in **gene expression**.

**Ras**: name derived from Rat sarcoma virus, which infection induces sarcoma 

+ Small monomeric GTPase, ~20 KDa, weak GTP hydrolysis activity.
+ <u>Highly mutated in human cancers</u>, e.g. ~ 30%, in pancreatic cancer, mutation rate <u>95%（for dominant-dominant mutation）</u>.
+ Pivotal roles in cell proliferation, survival, motility, etc.
+ Tethered on lipid membrane.

#### The Ras signaling pathway was discovered by analysis of Drosophila eye development

Observations:

+ Flies lacking a RTK called sevenless (<font color="EE0000">Sev</font>) fail to detect UV light by R7 photoreceptor → Sev is required for the formation of a photoreceptor cell called <font color="FF4500">R7</font>. 
+ Flies with deficiency of bride of sevenless (<font color="FF4500">Boss</font>) show the same defects

Therefore identify the proteins:

+ Sev - RTK receptor
+ Boss - Sev’s ligand

Therefore: Genetic screens of Sev/Boss partial mutant strains revealed that mutation of Ras leads to loss of R7; while hyperactive Ras rescues deficiency of both Sev/Boss

+ Ras locates downstream of Sev
+ Further genetic screen identified Son of sevenless (<font color="FF4500">Sos</font>) and <font color="EE0000">Drk</font> (<font color="EE0000">Grb2</font> in human)

#### Activation of Ras downstream of Sev RTK requires an adaptor protein Grb2 <u>and</u> the GEF Sos

> The GEF that mediates Ras activation by RTKs was discovered by genetic studies of eye development in Drosophila, where an RTK called **Sevenless (Sev)** is required for the formation of a photoreceptor cell called R7.
>
> Genetic screens for components of this signaling pathway led to the discovery of a Ras-GEF called **<font color="EE0000">Son-of-sevenless (Sos)</font>**. 
>
> Further genetic screens uncovered another protein, now called **<font color="EE0000">Grb2</font>**, which is an **adaptor protein** that links the **Sev receptor** to the **Sos protein;** 
>
> + the <font color="EE0000">SH2</font> domain of the **Grb2** adaptor binds to the activated receptor
> + while its two <font color="EE0000">SH3</font> domains bind to **Sos**.

<img src="https://20190531-1259353497.cos.ap-guangzhou.myqcloud.com/Cell%20Biology/image-20200708200804450.png" alt="image-20200708200804450" style="zoom:100%;" />
Activation of <font color="EE0000">Ras</font> is mediated by the Ras GEF Sos (Son of sevenless) (Ras-GDP → Ras-GTP)

In human, <font color="EE0000">Grb2</font> is homolog for D**r**k: adaptor protein

The adaptor protein Grb2 (growth factor receptor binding protein 2) /Drk that binds to Sos

#### RTK activates Ras

<img src="https://20190531-1259353497.cos.ap-guangzhou.myqcloud.com/Cell%20Biology/image-20200708200909222.png" alt="image-20200708200909222" style="zoom:100%;" />
#### Ras activation is transient

> Ras Activates a MAP Kinase Signaling Module
>
> Both the tyrosine phosphorylations and the activation of Ras triggered by activated RTKs are usually <u>short-lived</u> (Figure 15–48). **Tyrosine-specific protein phosphatases** quickly reverse the phosphorylations
>
> Protein Tyrosine Phosphatases Reverse Tyrosine Phosphorylations
>
> + In all signaling pathways that use tyrosine phosphorylation, the tyrosine phosphorylations are **reversed** by **protein tyrosine phosphatases**.
> + Whereas only a few types of **serine/threonine protein phosphatase catalytic subunits** are responsible for removing phosphate groups from phosphorylated serines and threonines on proteins, there are about 100 protein tyrosine phosphatases encoded in the human genome, including some **dual-specificity phosphatases** that also dephosphorylate serines and threonines.
> + Like tyrosine kinases, the tyrosine phosphatases occur in <u>both cytoplasmic and transmembrane forms.</u>
> + Unlike serine/threonine protein phosphatases, which generally have **broad specificity**, most tyrosine phosphatases display **exquisite specificity** for their substrates, removing phosphate groups from only **selected phosphotyrosines** on a subset of proteins.
> + These **receptor serine/threonine kinases** activate an even more direct signaling pathway to the nucleus than does the <font color="EE0000">JAK– STAT</font> pathway. They directly phosphorylate **latent transcription regulators** called **<font color="EE0000">Smads</font>**, which then translocate into the nucleus to control gene transcription.

<img src="https://20190531-1259353497.cos.ap-guangzhou.myqcloud.com/Cell%20Biology/image-20200708200921525.png" alt="image-20200708200921525" style="zoom:100%;" />
#### Ras activates a mitogen-activated protein kinase (MAPK) signaling module (Ras–Raf–Mek–Erk)

> Ras to inactivate itself by hydrolyzing its bound GTP to GDP. <u>To stimulate cells to **proliferate** or **differentiate**</u>, these **short-lived signaling events** <u>must be converted into **longer-lasting ones**</u> that can sustain the signal and relay it downstream to the nucleus to alter the pattern of gene expression. 
>
> + One of the key mechanisms used for this purpose is a system of proteins called the **mitogen-activated protein kinase module (MAP kinase module)** (Figure 15–49).
>
> The three components of this system form a functional signaling module that has been remarkably well conserved during evolution and is <u>used, with variations, in many different signaling contexts.</u>
>
> The three components are all protein kinases. 
>
> 1. The final kinase in the series is called simply **<font color="EE0000">MAP kinase (MAPK)</font>.** 
> 2. The next one <u>upstream</u> from this is **<font color="EE0000">MAP kinase kinase (MAPKK)</font>**: it phosphorylates and thereby activates **MAP kinase.** 
> 3. Next <u>above</u> that, receiving an activating signal directly from Ras, is **<font color="EE0000">MAP kinase kinase kinase (MAPKKK)</font>**: it phosphorylates and thereby activates **MAPKK**. 
>
> In the mammalian **Ras–MAP-kinase signaling pathway**, these three kinases are known by shorter names: 
>
> + **<font color="EE0000">Raf</font>** (= MAPKKK), **<font color="EE0000">Mek</font>** (= MAPKK), and **<font color="EE0000">Erk</font>** (=MAPK).
>
> **Erk** also **phosphorylates** and **inactivates Raf**, providing another **negative feedback** loop that helps **shut off the MAP kinase module.**

<img src="https://20190531-1259353497.cos.ap-guangzhou.myqcloud.com/Cell%20Biology/image-20200708200946686.png" alt="image-20200708200946686" style="zoom: 33%;" />

MAP kinase pathway controls both, 

+ protein activity
+ gene transcription through phosphorylation of transcription regulatory complex, which activates transcription of
+ immediate early genes within minutes
 
+ other genes (e.g. regulate **G1 cyclin**) 
+ stimulate cell proliferation, differentiation, etc..
+ Extracellular signals usually activate MAP kinases only transiently (min), while sometimes can also be many hours (e.g. NGF mediated neuron differentiation)

##### (1) Specificity of MAPK signaling provided by scaffold proteins

> **Scaffold Proteins** Help Prevent Cross-talk Between Parallel MAP Kinase Modules
>
> Although the scaffold strategy provides precision and avoids cross-talk, it reduces the opportunities for **amplification** and **spreading** of the signal to different <u>parts of the cell</u>, which require at least some of the components to be diffusible

<img src="https://20190531-1259353497.cos.ap-guangzhou.myqcloud.com/Cell%20Biology/image-20200708201123564.png" alt="image-20200708201123564" style="zoom:100%;" />
12 MAPKs, 7 MAPKKs, and 7 MAPKKKs

+ At least five parallel MAP kinase modules

Stress response mediated by <font color="0000EE">JNK</font> and <font color="0000EE">p38</font> are activated by different kinds of cell stresses, such as **UV irradiation**, **heat shock**, and **osmotic stress**, as well as by **inflammatory cytokines** 

+ Scaffold proteins provide precision and prevent cross-talk between parallel/neighboring MAP kinase modules

#### Ras superfamily of monomeric GTPases

<img src="https://20190531-1259353497.cos.ap-guangzhou.myqcloud.com/Cell%20Biology/image-20200708201701621.png" alt="image-20200708201701621" style="zoom:100%;" />
### 3. Signaling pathways downstream of RTKs: the Rho GTPase signaling pathway

> <font color="EE0000">Rho</font> Family GTPases Functionally Couple Cell-Surface Receptors to the Cytoskeleton
>
> Besides the Ras proteins, the **other class of Ras superfamily GTPases** that relays signals from **cell-surface receptors** is the large **Rho family**
>
> Rho family monomeric GTPases regulate both the <u>actin and microtubule cytoskeletons</u>, 
>
> + controlling **cell shape**, **polarity**, **motility**, and **adhesion** (discussed in Chapter 16); 
> + they also regulate **cell-cycle progression**, **gene transcription**, and **membrane transport.** 
> + They play a key part in the guidance of **cell migration** and **nerve axon outgrowth**, mediating cytoskeletal responses to the activation of a special class of guidance receptors

> The three best-characterized family members are **<font color="EE0000">Rho</font>** itself, **<font color="EE0000">Rac</font>**, and **<font color="EE0000">Cdc42</font>**, each of which affects multiple downstream target proteins. In the same way as for Ras, GEFs activate and GAPs inactivate the Rho family GTPases; there are more than 80 Rho-GEFs and more than 70 Rho-GAPs in humans
>
> Unlike Ras, which is <u>membrane-associated even when inactive</u> (with GDP bound), inactive Rho family GTPases are often bound to **<font color="EE0000">guanine nucleotide dissociation inhibitors (GDIs)</font>** in the **cytosol**, which <u>prevent the GTPases</u> from interacting with their **Rho-GEFs** at the **plasma membrane**
>
> + Signaling by extracellular signaling proteins of the **<font color="EE0000">ephrin</font>** family provides an example of how RTKs can activate a Rho GTPase.

<img src="https://20190531-1259353497.cos.ap-guangzhou.myqcloud.com/Cell%20Biology/image-20200708201723934.png" alt="image-20200708201723934" style="zoom:33%;" />



Ephrin (extracellular signaling proteins) binds and activates the <font color="EE0000">Eph</font> family of RTKs (<font color="EE0000">EphA4</font>) on the surface of motor neurons

Helps guide the migrating tip of the axon (called a growth cone) to its muscle target.

#### Signaling pathways downstream of RTKs: the PI~3~-kinase (PI~3~K) signaling pathway

> PI 3-Kinase Produces Lipid Docking Sites in the Plasma Membrane
>
> One of the proteins that binds to the intracellular tail of RTK molecules is the plasma-membrane-bound enzyme **phosphoinositide 3-kinase (PI 3-kinase)**.
>
> This kinase principally phosphorylates **inositol phospholipids** rather than proteins, and both RTKs and GPCRs can activate it. It plays a central part in promoting cell **survival** and **growth**.

> Notice the difference between this use of phosphoinositides and their use described earlier, in which **PI(4,5)P2** is cleaved by **<font color="0000EE">PLCβ</font>** (in the case of GPCRs) or **<font color="EE0000">PLCγ</font>** (in the case of RTKs) to generate soluble <font color="EE0000">IP3</font> and **membrane-bound diacylglycerol** (see Figures 15–28 and 15–29)
>
> + By contrast, **PI(3,4,5)P3** is not cleaved by either PLC
>
> There are various types of PI 3-kinases. Those activated by RTKs and GPCRs belong to **class I**
>
> + RTKs activate **class <font color="0000EE">Ⅰa</font> PI 3-kinases**, in which the regulatory subunit is an **adaptor protein** that binds to **two phosphotyrosines** on **activated RTKs** through its two **SH2 domains** (see Figure 15–46A). 
>+ GPCRs activate **class <font color="0000EE">Ⅰb</font> PI 3-kinases**, which have a **regulatory subunit** that binds to the **βγ complex** of an activated trimeric G protein (<font color="0000EE">G~q~ </font>) when GPCRs are activated by their extracellular ligand.

<img src="https://20190531-1259353497.cos.ap-guangzhou.myqcloud.com/Cell%20Biology/image-20200708201811180.png" alt="image-20200708201811180" style="zoom: 50%;" />

There are various types of PI 3-kinases. 

Those activated by RTKs and GPCRs belong to class I. 

These are heterodimers composed of a common catalytic subunit and different regulatory subunits. 

+ RTKs activate class Ia PI3K, in which the regulatory subunit is an adaptor protein that binds to two phosphotyrosines on activated RTKs through its two SH2 domains. 

+ GPCRs activate class Ib PI3K, which have a regulatory subunit that binds to the βγ complex of an activated G~q~, when GPCRs are activated. 

The direct binding of activated Ras can also activate the common class I catalytic subunit.

#### The PI3K/Akt signaling pathway

> Intracellular signaling proteins bind to **PI(3,4,5)P3** produced by activated PI 3-kinase via a specific interaction domain, such as a **<font color="EE0000">pleckstrin homology (PH) domains</font>**
>
> One especially important PH-domain-containing protein is the serine/threonine protein kinase **<font color="EE0000">Akt</font>**. 
>
> + The **PI-3-kinase–Akt signaling pathway** is the major pathway activated by the hormone **insulin**. It also plays a key part in promoting the **survival and growth** of many cell types

> The PI-3-Kinase–Akt Signaling Pathway Stimulates Animal Cells to Survive and Grow
>
> Members of the **<font color="EE0000">insulin-like growth factor (IGF)</font>** family of signal proteins, for example, stimulate many types of animal cells to survive and grow. They bind to specific RTKs (see Figure 15–43), which activate PI 3-kinase to produce PI(3,4,5)P3
>
> The PI(3,4,5)P3 recruits two protein kinases to the plasma membrane via their **PH domains**—**Akt** (also called **<font color="EE0000">protein kinase B</font>**, or **<font color="EE0000">PKB</font>**) and **<font color="EE0000">phosphoinositide-dependent protein kinase 1 (PDK1)</font>**, and this leads to the activation of **Akt**
>
> + **Akt** phosphorylates various target proteins at the plasma membrane, as well as in the cytosol and nucleus

<img src="https://20190531-1259353497.cos.ap-guangzhou.myqcloud.com/Cell%20Biology/image-20200708201905221.png" alt="image-20200708201905221" style="zoom:100%;" />
Intracellular signaling proteins bind to PI(3,4,5)P3 produced by activated PI3K via a specific interaction domain, such as a PH domain (pleckstrin homology first identified in the platelet protein pleckstrin) (PH domain is very common, and is present in Sos as well) 

PI3K-Akt signaling is to 

+ promote signals for cell growth and survival 
+ produces lipid binding/docking sites for proteins at the PM

##### (1) Coordination and integration of growth factor and nutrient sensing pathways

> The control of cell growth by the PI-3-kinase–Akt pathway depends in part on a large protein kinase called **TOR**
>
> + <u>in mammalian cells, it is called **<font color="EE0000">mTOR</font>**, which exists in cells in two functionally distinct multiprotein complexes.</u> **<font color="EE0000">mTOR complex 1</font>** contains the protein **<font color="EE0000">raptor</font>**; this complex is <u>sensitive</u> to **rapamycin**, and it stimulates **cell growth**—both by promoting <u>ribosome production and protein synthesis</u> and by <u>inhibiting protein degradation</u>. Complex 1 also promotes both cell growth and cell survival by <u>stimulating nutrient uptake and metabolism.</u> 
> + **<font color="EE0000">mTOR complex 2</font>** contains the protein **<font color="EE0000">rictor</font>** and is <u>insensitive to rapamycin</u>; it helps to **activate Akt** (see Figure 15–53), and it regulates the **actin cytoskeleton** via **Rho** family GTPases.
>
> + Akt activates mTOR in complex 1 indirectly by phosphorylating, and thereby inhibiting a GAP called <font color="EE0000">Tsc2</font>. 
> + Tsc2 acts on a monomeric Ras-related GTPase called **<font color="EE0000">Rheb</font>** (see Table 15–5).

<img src="https://20190531-1259353497.cos.ap-guangzhou.myqcloud.com/Cell%20Biology/image-20200708201944542.png" alt="image-20200708201944542" style="zoom: 25%;" />

##### (2) Activation of mTORC1 by the PI3-kinase (PI3K)-Akt

<img src="https://20190531-1259353497.cos.ap-guangzhou.myqcloud.com/Cell%20Biology/image-20200708202018066.png" alt="image-20200708202018066" style="zoom:100%;" />
mTOR1: Raptor (regulatory subunit, rapamycin **sensitive**) 

mTOR2: rictor (regulatory subunit, rapamycin **insensitive**)

##### (3) The PI3K and the phosphatase and tensin homolog (PTEN) control PIP3 levels at the plasma membrane

<img src="https://20190531-1259353497.cos.ap-guangzhou.myqcloud.com/Cell%20Biology/image-20200708202416557.png" alt="image-20200708202416557" style="zoom:100%;" />
PI3K hyperactivation and PTEN loss-of-function occurs frequently in human cancers.

### 4. RTKs and GPCRs activate overlapping signaling pathways

<img src="https://20190531-1259353497.cos.ap-guangzhou.myqcloud.com/Cell%20Biology/image-20200708202519254.png" alt="image-20200708202519254" style="zoom:100%;" />
Some pathway components like Ca^2+^ or phospholipase C could participate in both GPCR and RTK pathways 

Pathway may also integrate signal via double phosphorylation or activating complementary proteins

### 5. Summary: major downstream signaling of receptor tyrosine kinases (RTKs)

Ras signaling pathway

Rho signaling pathway

PI3K/Akt signaling pathway

## Activation of EGFR (epithelia growth factor receptor)

<img src="https://20190531-1259353497.cos.ap-guangzhou.myqcloud.com/Cell%20Biology/image-20200708195855971.png" alt="image-20200708195855971" style="zoom:100%;" />
EGF binding results in a conformational change that promotes dimerization of the external domains. 

The receptor kinase domain is not activated by trans-autophosphorylation. 

Instead, dimerization induce an activating conformational change in one monomer (the receiver). 

The active receiver domain then phosphorylates multiple tyrosines in the C-terminal tails of both receptors.


## The PDGF (platelet-derived growth factor) receptor and signal relay

<img src="https://20190531-1259353497.cos.ap-guangzhou.myqcloud.com/Cell%20Biology/image-20200708200433727.png" alt="image-20200708200433727" style="zoom:100%;" />
### 1. SH2 domain structure

<img src="https://20190531-1259353497.cos.ap-guangzhou.myqcloud.com/Cell%20Biology/image-20200708200453124.png" alt="image-20200708200453124" style="zoom:100%;" />
## Conserved Interaction Domains

> Proteins with SH2 Domains Bind to Phosphorylated Tyrosines
>
> + A whole menagerie of intracellular signaling proteins can bind to the phosphotyrosines on activated RTKs (or on docking proteins such as <font color="EE0000">IRS1</font>).
> + They help to relay the signal onward（向前）, mainly through chains of protein–protein interactions mediated by modular interaction domains
>
> Some of the docked proteins are enzymes, such as **<font color="EE0000">phospholipase C-γ (PLCγ)</font>**, which functions in the same way as **phospholipase C-β**—activating the inositol phospholipid signaling pathway discussed earlier in connection with GPCRs
>
> + Through this pathway, RTKs can increase cytosolic Ca^2+^ levels and activate PKC. Another enzyme that docks on these receptors is the cytoplasmic tyrosine kinase Src, which phosphorylates other signaling proteins on tyrosines.
>
> Yet another is **phosphoinositide 3-kinase (PI 3-kinase)**, which phosphorylates lipids rather than proteins; as we discuss later, the phosphorylated lipids then serve as docking sites to <u>attract</u> various signaling proteins to the plasma membrane.
>
> The intracellular signaling proteins that bind to phosphotyrosines have varied structures and functions. However, they usually share <u>highly conserved phosphotyrosine-binding domains</u>. 
>
> These can be either 
>
> 1. **SH2 domains** (for Src homology region) 
> 2. or, less commonly, **PTB domains** (for phosphotyrosine-binding)
> 3. **SH3 domain**, which binds to proline-rich motifs in intracellular proteins

Conserved interaction domains are important for protein binding which modulates intracellular signaling proteins (Lecture 15)

1. Src homology 2 (SH2) domains (Bind phosphotyrosine (p-$\gamma$))
2. Phosphotyrosine-binding (PTB) domains (Bind phosphotyrosine (p-$\gamma$))
3. Src homology 3 (SH3): bind proline rich domains
4. Pleckstrin homology (PH): bind phosphoinositides

<img src="https://20190531-1259353497.cos.ap-guangzhou.myqcloud.com/Cell%20Biology/image-20200708200217084.png" alt="image-20200708200217084" style="zoom:100%;" />
+ autophosphorylation of activated receptor <u>recruits IRS1</u>
+ Receptor phosphorylates IRS1, which <u>recruits Grb2</u>
 1. Grb2 <u>recruits Sos</u>
  + Sos acts as a GEF to activate Ras
 2. Grb2 <u>recruits scaffold protein</u>

> <u>Not</u> all proteins that bind to activated RTKs via SH2 domains help to relay the signal onward. Some act to <u>decrease the signaling process</u>, providing **negative feedback**
>
> + One example is the **<font color="EE0000">c-Cbl protein</font>**, which can dock on some activated receptors and catalyze their ubiquitylation, covalently adding one or more ubiquitin molecules to specific sites on the receptor. This promotes the endocytosis and degradation of the receptors in lysosomes—an example of receptor down-regulation
> + Mutations that inactivate **c-Cbl-dependent RTK down-regulation** cause prolonged RTK signaling and thereby promote the development of cancer.
> + Endocytic proteins that contain **<font color="EE0000">ubiquitin-interaction motifs (UIMs)</font>** recognize the ubiquitylated RTKs and direct them into **clathrin-coated vesicles** and, ultimately, into lysosomes (discussed in Chapter 13). 
>
> As is the case for GPCRs, **ligand-induced endocytosis of RTKs** does <u>not</u> always <u>decrease</u> signaling. In some cases, RTKs are endocytosed with their bound signaling proteins and <u>continue to signal</u> from **endosomes** or other intracellular compartments
>
> Some signaling proteins are composed almost entirely of SH2 and SH3 domains and function as **adaptors** to couple tyrosine-phosphorylated proteins to other proteins that <u>do not have their own SH2 domains</u>

# 二、Non–receptor tyrosine kinases 

> Some Enzyme-Coupled Receptors Associate with Cytoplasmic Tyrosine Kinases
>
> Many cell-surface receptors depend on **tyrosine phosphorylation** for their activity and yet <u>lack a tyrosine kinase domain</u>. These receptors act through **cytoplasmic tyrosine kinases**, which are <u>associated with the receptors</u> and <u>phosphorylate various target proteins,</u> often <u>including the receptors themselves</u>, when the receptors bind their ligand.
>
> These **tyrosine-kinase-associated receptors** thus function <u>in much the same way as **RTKs**</u>, except that their kinase domain is encoded by a separate gene and is noncovalently associated with the receptor polypeptide chain.

## Major types of cytosolic non-receptor tyrosine kinases

> Some of these receptors depend on members of the largest family of mammalian cytoplasmic tyrosine kinases, the **<font color="EE0000">Src</font>** family
>
> which includes **<font color="EE0000">Src, Yes, Fgr, Fyn, Lck, Lyn, Hck, and Blk</font>.** These protein kinases all contain **SH2** and **SH3** domains and are located on the cytoplasmic side of the plasma membranes
>
> + In each case, the kinase is <u>activated</u> when an **extracellular ligand** binds to the appropriate receptor protein. Src itself, as well as several other family members, can also bind to activated RTKs;
> + There are even **some G proteins** (Gs and Gi) that can activate Src, which is one way that the **activation of GPCRs** can lead to **tyrosine phosphorylation** of intracellular signaling proteins and effector proteins.

**Src** (sarcoma virus) tyrosine kinase protein family: 

+ cytosolic tyrosine kinases
+ proto-oncogenes
+ controls cytoskeleton assembly, growth and proliferation.

Focal adhesion kinase (**<font color="EE0000">FAK</font>**) (“Integrin signaling” Lecture 25) 

+ mediates integrin signaling to the cytoskeleton during cell adhesion.

Janus kinases (**<font color="EE0000">JAKs</font>**):

+ named after the two-faced Roman God Janus
+ cytosolic tyrosine kinases
+ they phosphorylate and activate gene regulatory proteins, called signal transducers and activators of transcription (**<font color="EE0000">STAT</font>**)
+ mediates cytokine signaling

## Src tyrosine kinase protein family 

The largest family of cytoplasmic tyrosine kinases

+ Family members: <font color="EE0000">Src, Yes, Fgr, Fyn, Lck, Lyn, Hck, Blk</font>, etc
 + All contain conserved SH2, SH3 and kinase domains.
 + All within the cytoplasmic region
+ Binds to activated RTK, mutually stimulate each other

Some G-proteins can also activate Src

Src is also phosphorylated by focal adhesion kinase (FAK)

### 1. Src kinase has “on” and “off” states

This part also described in L12

<img src="https://20190531-1259353497.cos.ap-guangzhou.myqcloud.com/Cell%20Biology/image-20200708202802918.png" alt="image-20200708202802918" style="zoom:100%;" />
+ Three distinct domains: SH2, SH3, kinase domain 
+ OFF: phosphorylation of tyrosine (Y) 527 (inhibiting phosphotyrosine) 
+ ON: phosphorylation of tyrosine (Y) 416 (activating phosphotyrosine)

# 三、Receptor Ser/Thr kinases 

## Serine/Threonine kinase receptor

Single transmembrane receptor and Ser/Thr kinase.

+ Two classes: Type I and Type II, which are homodimers
+ Type II dimer phosphorylates Type I dimer to form active tetramer.

They are receptors for transforming growth factor-β (<font color="EE0000">TGF-β</font>) protein superfamily:

+ secreted and dimeric proteins
+ ~33 members for human
+ two categories: TGF-β/ativin family, bone morphogenetic protein (BMP) family

Control diverse activity in differentiation, proliferation, cell death, development, etc.

### 1. Smad-dependent signaling activated by TGF-β

> Signal Proteins of the TGFβ Superfamily Act Through Receptor Serine/Threonine Kinases and <font color="EE0000">Smads</font>
>
> + The **transforming growth factor-β (TGFβ) superfamily** consists of a large number (33 in humans) of structurally related, secreted, dimeric proteins.
>
> During development, they regulate pattern formation and influence various cell behaviors, including **proliferation**, **specification** and **differentiation**, **extracellular matrix production**, and **cell death**.

> The superfamily consists of the **<font color="FF4500">TGFβ/activin family</font>** and the larger **<font color="FF4500">bone morphogenetic protein (BMP)</font>** family
>
> <u>All of these proteins **act through** enzyme-coupled receptors that are **single-pass** transmembrane proteins with a serine/threonine kinase domain on the cytosolic side of the plasma membrane</u>. 
>
> + There are two classes of these receptor serine/threonine kinases—**type I and type II**—which are structurally similar homodimers.
>
> Each member of the TGFβ superfamily binds to a <u>characteristic combination of type-I and type-II receptor dimers</u>, bringing the kinase domains together so that the <u>type-II receptor can phosphorylate and activate the type-I receptor</u>, forming an active tetrameric receptor complex
>
> + The activated type-I receptor directly binds and phosphorylates a latent transcription regulator of the **Smad family** (named after the first two proteins identified, Sma in C. elegans and Mad in Drosophila)

> TGFβ/activin与BMP调控Smad的不同方式:
>
> > Activated <font color="FF4500">TGFβ/activin receptors</font> phosphorylate **<font color="0000EE">Smad2</font>** or **<font color="0000EE">Smad3</font>**, while activated <font color="FF4500">BMP receptors</font> phosphorylate <font color="0000EE">**Smad1**, **Smad5**, or **Smad8**.</font> 
> >
> > Once one of these receptor-activated Smads (**R-Smads**) has been phosphorylated, it dissociates from the receptor and binds to <font color="0000EE">**Smad4**</font> (called a **co-Smad**), which can form a complex with any of the five R-Smads. 
> >
> > + The Smad complex then translocates into the nucleus, where it associates with other **transcription regulators** and controls the transcription of specific target genes (Figure 15–57). 
> > + Because the partner proteins in the nucleus vary depending on the cell type and state of the cell, the genes affected vary.

> Activated TGFβ receptors and their bound ligand are **endocytosed** by two distinct routes, one leading to **further activation** and the other leading to **inactivation.** 
>
> 1. The activation route depends on **clathrin-coated vesicles** and leads to **early endosomes** (discussed in Chapter 13), where most of the Smad activation occurs.
> 2. The inactivation route depends on **caveolae** (discussed in Chapter 13) and leads to receptor **ubiquitylation** and **degradation** in proteasomes.
>
> During the signaling response, the **Smads** <u>shuttle</u> continuously between the cytoplasm and the nucleus: they are **dephosphorylated** in the nucleus and exported to the cytoplasm

<img src="https://20190531-1259353497.cos.ap-guangzhou.myqcloud.com/Cell%20Biology/image-20200708202958466.png" alt="image-20200708202958466" style="zoom:50%;" />

In activated tetramer, the type-II receptors phosphorylate specific sites on the type-I receptors, and activate their kinase domains 

+ Phosphorylation R-Smads (Smad2 and Smad3) (**BMP signaling, R-Smads: 1, 5, 8**) 
+ Formation of a trimeric Smad complex containing two R-Smads and the co-Smad, Smad4) 

The phosphorylated Smad complex enters the nucleus and regulate specific gene transcription

> As in other signaling systems, **negative feedback** regulates the Smad pathway. Among the target genes activated by Smad complexes are those that encode **inhibitory Smads**, either <font color="0000EE">**Smad6**</font> or <font color="0000EE">**Smad7**</font>. 
>
> **Smad7** (and possibly **Smad6**) binds to the cytosolic tail of the activated receptor and inhibits its signaling ability in at least three ways:
>
> 1. <u>it competes with **R-Smads**</u> for binding sites on the receptor, decreasing R-Smad phosphorylation
> 2. it <u>recruits a ubiquitin ligase</u> called <font color="EE0000">**Smurf**</font>, which ubiquitylates the receptor, leading to receptor internalization and degradation (it is because **Smurfs** also ubiquitylate and promote the degradation of **Smads** that they are called **Smad ubiquitylation regulatory factors**, or Smurfs); 
> 3. it <u>recruits a **protein phosphatase**</u> that dephosphorylates and inactivates the receptor. In addition, the **inhibitory Smads** bind to the co-Smad, <font color="0000EE">**Smad4**</font>, and inhibit it, either by preventing its binding to **R-Smads** or by promoting its ubiquitylation and degradation.
>
> Although receptor serine/threonine kinases operate mainly through the Smad pathway just described, they can also stimulate other intracellular signaling proteins such as **MAP kinases** and **PI 3-kinase**. 
>
> Conversely, signaling proteins in other pathways can phosphorylate **Smads** and thereby influence signaling along the Smad pathways

# 四、Cytokine receptors that activates JAK-STAT signaling

> Cytokine Receptors Activate the JAK–STAT Signaling Pathway
>
> The large family of **cytokine receptors** includes receptors for many kinds of local mediators (collectively called **cytokines**), as well as receptors for some hormones, such as **growth hormone** and **prolactin**
>
> These receptors are stably associated with cytoplasmic tyrosine kinases called **<font color="EE0000">Janus kinases (JAKs)</font>** (after the two-faced Roman god), which phosphorylate and activate transcription regulators called **<font color="EE0000">STATs</font>** (signal transducers and activators of transcription).
>
> **STAT** proteins are located in the cytosol and are referred to as **latent transcription regulators** because they <u>migrate into the nucleus</u> and regulate gene transcription only after they are activated.
>
> **Negative feedback** regulates the responses mediated by the JAK–STAT pathway.

## JAK-STAT signaling pathway

<img src="https://20190531-1259353497.cos.ap-guangzhou.myqcloud.com/Cell%20Biology/image-20200708203047738.png" alt="image-20200708203047738" style="zoom:100%;" />
JAK-Janus kinase (cytosolic tyrosine kinase)

Mediates growth hormone, prolactin, cytokine signaling

STAT-Signal transducers and activators of transcription (transcription factors)

### 1. JAK-STAT signaling pathway activated by cytokines

<img src="https://20190531-1259353497.cos.ap-guangzhou.myqcloud.com/Cell%20Biology/image-20200708203112934.png" alt="image-20200708203112934" style="zoom:100%;" />
### 2. How does prolactin promote milk production?

<img src="https://20190531-1259353497.cos.ap-guangzhou.myqcloud.com/Cell%20Biology/image-20200708203126121.png" alt="image-20200708203126121" style="zoom:100%;" />
### 3. How to deactivate phosphorylated tyrosines?

Phosphorylated tyrosines are dephosphorylated/deactivated by tyrosine phosphatases

~ 100 protein tyrosine phosphatases in human genome, each has exquisite specificity for a subset of proteins

# 五、Cytokine receptors that activates NF$\kappa$B signaling

> Many Stressful and Inflammatory Stimuli Act Through an NFκB-Dependent Signaling Pathway
>
> The **NFκB proteins** are <u>latent transcription regulators</u> that are present in most animal cells and are central to many stressful, inflammatory, and innate immune responses. These responses occur as a reaction to **infection** or **injury** and help protect stressed multicellular organisms and their cells
>
> + An excessive or inappropriate inflammatory response in animals can also damage tissue and cause severe pain, and chronic inflammation can lead to cancer; as in the case of <font color="EE0000">Wnt</font> and <font color="EE0000">Hedgehog</font> signaling, **excessive NFκB signaling** is found in a number of human cancers.
> + NFκB proteins also have important roles during normal animal development: the Drosophila NFκB family member **<font color="EE0000">Dorsal</font>**, for example, has a crucial role in specifying the dorsal–ventral axis of the developing fly embryo (discussed in Chapter 22).

> Various cell-surface receptors activate the NFκB signaling pathway in animal cells.
>
> + **Toll receptors** in Drosophila and Toll-like receptors in vertebrates, for example, recognize pathogens and activate this pathway in triggering innate immune responses (discussed in Chapter 24).
> + The receptors for **tumor necrosis factor α** (**<font color="EE0000">TNFα</font>**) and **<font color="EE0000">interleukin-1 (IL1)</font>**, which are vertebrate cytokines especially important in inducing inflammatory responses, also activate this signaling pathway.
>
> The <font color="EE0000">Toll, Toll-like, and IL1 receptors</font> belong to the same family of proteins, whereas TNF receptors belong to a different family; all of them, however, act in similar ways to **activate NFκB**
>
> When activated, they trigger a multiprotein ubiquitylation and phosphorylation cascade that <u>releases NFκB from an inhibitory protein complex</u>, so that it can translocate to the nucleus and turn on the transcription of hundreds of genes that participate in inflammatory and innate immune responses.

> There are five NFκB proteins in mammals (<font color="EE0000">**RelA**, **RelB**, **c-Rel**, **NFκB1**, and **NFκB2**</font>), and they form a variety of **homodimers** and **heterodimers**, each of which activates its own characteristic set of genes.
>
> + **Inhibitory proteins** called **<font color="EE0000">IκB</font>** bind tightly to the dimers and hold them in an inactive state within the cytoplasm of unstimulated cells. There are three major **IκB** proteins in mammals (**<font color="EE0000">IκB α, β, and ε</font>**), and the signals that release NFκB dimers do so by triggering a signaling pathway that leads to the phosphorylation, ubiquitylation, and consequent degradation of the IκB proteins
>
> Among the genes activated by the released NFκB is the gene that encodes **IκBα**. This activation leads to increased synthesis of **IκBα protein**, which binds to NFκB and inactivates it, creating a negative **feedback loop**

## NF$\kappa$B pathway

<img src="https://20190531-1259353497.cos.ap-guangzhou.myqcloud.com/Cell%20Biology/image-20200708203846491.png" alt="image-20200708203846491" style="zoom:100%;" />
NF$\kappa$B proteins are <u>latent transcription regulators</u> that are present in most animal cells and are central to many stressful, inflammatory, and innate immune responses.

Various cell-surface receptors can activate the NF$\kappa$B signaling pathway in animal cells. 

+ Toll receptors in fly
+ Toll-like receptors (<font color="EE0000">TLR</font>) in vertebrates (recognize pathogens and activate this pathway in triggering innate immune response)
+ Cytokines responsible for inflammatory responses 
 + Interleukin-1 (IL1 ) 
 + Tumor necrosis factor a (TNF$\alpha$ )

> Nuclear Receptors Are Ligand-Modulated Transcription Regulators
>
> Various <u>small, hydrophobic</u> signal molecules diffuse directly across the plasma membrane of target cells and bind to intracellular receptors that are **transcription regulators**. These signal molecules include **steroid hormones**, **thyroid hormones**, **retinoids**, and **vitamin D**.
>
> They bind to their <u>respective intracellular receptor proteins</u> and alter the ability of these proteins to control the transcription of specific genes. Thus, these proteins serve both as <u>intracellular receptors</u> and as <u>intracellular effectors</u> for the signal.
>
> The receptors are all structurally related, being part of the very large nuclear receptor superfamily

> Many family members have been identified by DNA sequencing only, and their ligand is not yet known; they are therefore referred to as **orphan nuclear receptors**, and they make up large fractions of the nuclear receptors encoded in the genomes of humans, Drosophila, and the nematode C. elegans.
>
> Some mammalian nuclear receptors are regulated by intracellular metabolites rather than by secreted signal molecules; the **peroxisome proliferation-activated receptors (PPARs)**, for example, bind intracellular lipid metabolites and regulate the transcription of genes involved in lipid metabolism and fat-cell differentiation
>
> **Steroid hormones**—which include **cortisol** (皮质(甾)醇), the **steroid sex hormones**, **vitamin D** (in vertebrates), and the molting hormone **ecdysone** (蜕化素；蜕皮激素) (in insects)—are all made from cholesterol
>
> + **Cortisol** is produced in the **cortex of the adrenal glands** and influences the <u>metabolism</u> of many types of cells. The **steroid sex hormones** are made in the <u>testes and ovaries</u> and are responsible for the <u>secondary sex characteristics</u> that distinguish males from females.
> + **Vitamin D** is synthesized in the skin in response to sunlight; after it has been converted to its active form in the liver or kidneys, it regulates Ca^2+^ metabolism, promoting Ca^2+^ uptake in the gut and reducing its excretion in the kidneys
> + The **thyroid hormones**, which are made from the amino acid **tyrosine**, act to <u>increase the metabolic rate</u> of many cell types, while the **retinoids**, such as **retinoic acid**, are made from vitamin A and have important roles as local mediators in vertebrate development.
>
> Although all of these signal molecules are relatively <u>insoluble in water</u>, they are made <u>soluble</u> for transport in the bloodstream and other extracellular fluids by binding to specific carrier proteins, from which they dissociate before entering a target cell
>
> The **inactive receptors** are usually bound to **inhibitory protein complexes**. Ligand binding **alters the conformation** of the receptor protein, causing the inhibitory complex to dissociate, while also causing the receptor to bind **coactivator** proteins that stimulate gene transcription

### 1. Negative feedback in the NF$\kappa$B signaling pathway induced in NF$\kappa$B activation

<img src="https://20190531-1259353497.cos.ap-guangzhou.myqcloud.com/Cell%20Biology/image-20200708204036410.png" alt="image-20200708204036410" style="zoom:100%;" />
# 六、Other signaling: Notch, Wnt, Hedgehog and Circadian clock

## Notch pathway

> The Receptor Notch Is a Latent Transcription Regulatory Protein
>
> it has a general role in controlling **cell fate** **choices** and regulating **pattern formation** during the development of most tissues, as well as in the **continual renewal of tissues** such as the lining of the gut.

<img src="https://20190531-1259353497.cos.ap-guangzhou.myqcloud.com/Cell%20Biology/image-20200708204050373.png" alt="image-20200708204050373" style="zoom:100%;" />
In fly neural cells, when a precursor cell commits to becoming a neural cell, it signals to its immediate neighbors not to do the same; the inhibited cells develop into epidermal cells instead. This process is called lateral inhibition. 

> This process, called **lateral inhibition**, depends on a contact-dependent signaling mechanism that is activated by a single-pass transmembrane signal protein called **Delta**

This depends on a contact-dependent signaling mechanism that is activated by a single-pass transmembrane signal protein called <font color="EE0000">Delta</font> that activates <font color="EE0000">Notch receptors</font>. 

By activation, Notch cleaved and its tail migrates to nucleus where activates responsible genes.

<img src="https://20190531-1259353497.cos.ap-guangzhou.myqcloud.com/Cell%20Biology/image-20200708204107482.png" alt="image-20200708204107482" style="zoom:50%;" />

> Notch is a single-pass transmembrane protein that requires **proteolytic processing** to function. It acts as a **latent transcription regulator** and provides the simplest and most direct signaling pathway known from a cell-surface receptor to the nucleus.
>
> Note that, unlike most receptors, the activation of Notch is **irreversible**; once activated by ligand binding, the protein cannot be used again.
>
> Both Notch and Delta are **glycoproteins**, and their interaction is regulated by the **glycosylation** of Notch.
>
> + The **Fringe family of glycosyl transferases**, in particular, adds extra sugars to the **O-linked oligosaccharide** (discussed in Chapter 13) on Notch, which alters the specificity of Notch for its ligands.

### 1. The processing and activation of Notch

<img src="https://20190531-1259353497.cos.ap-guangzhou.myqcloud.com/Cell%20Biology/image-20200708204131047.png" alt="image-20200708204131047" style="zoom:100%;" />
3-step proteolytic processing 

1. The first proteolytic processing step occurs within the trans Golgi network to generate the mature heterodimeric Notch receptor that is then displayed on the cell surface. 
2. The binding to Delta on a neighboring cell triggers the next two proteolytic steps: 
 + Delta-Notch complex is endocytosed by the Delta expressing cell, exposing the extracellular cleavage site in the transmembrane Notch subunit. 

3. The released Notch tail <u>migrates into the nucleus</u>, where it binds to the <font color="EE0000">Rbpsuh</font> protein, which it converts from a **transcriptional repressor** to a transcriptional activator.

## Wnt pathway

> Wnt Proteins Bind to <font color="EE0000">**Frizzled Receptors**</font> and <u>Inhibit</u> the Degradation of **β-Catenin**
>
> **Wnt proteins** are **secreted** signal molecules that act as local mediators and **morphogens** (形态发生子) to control many aspects of development in all animals that have been studied
>
> + They were discovered independently in flies and in mice: in Drosophila, the **<font color="0000EE">Wingless (Wg) gene</font>** originally came to light because of its role as a morphogens in wing development, while in mice, the **<font color="0000EE">Int1 gene</font>** was found because it promoted the development of breast tumors when activated by the integration of a virus next to it
>
> Wnts are unusual as secreted proteins in that they have a **fatty acid chain** covalently attached to their **N-terminus**, which <u>increases their binding to cell surfaces.</u>

> Wnts can activate at least two types of intracellular signaling pathways. 
>
> 1. Our primary focus here is the **<font color="EE0000">Wnt/β-catenin pathway</font>** (also known as the **<font color="EE0000">canonical Wnt pathway</font>**), which is centered on the <u>latent transcription regulator</u> **β-catenin**. 
> 2. A second pathway, called the **<font color="EE0000">planar polarity pathway</font>**, coordinates the <u>**polarization** of cells</u> in the plane of a developing epithelium and depends on **<font color="EE0000">Rho</font>** family GTPases. Both of these pathways begin with the binding of Wnts to **<font color="EE0000">Frizzled</font>** family cell-surface receptors
> + when activated by Wnt binding, Frizzled proteins recruit the **scaffold protein** **<font color="EE0000">Dishevelled</font>**, which helps relay the signal to other signaling molecules

> Wnt proteins regulate **β-catenin** proteolysis by binding to **both** a **Frizzled protein** and a co-receptor that is related to the **low-density lipoprotein (LDL) receptor** (discussed in Chapter 13) and is therefore called an **<font color="EE0000">LDL-receptor-related protein (LRP)</font>**.
>
> + In a poorly understood process, the activated receptor complex recruits the **Dishevelled scaffold** and promotes the <u>phosphorylation of the LRP receptor</u> by the two protein kinases, **<font color="0000EE">GSK3</font>** and **<font color="0000EE">CK1</font>**.
> + **Axin** is brought to the receptor complex and inactivated, thereby disrupting the β-catenin degradation complex in the cytoplasm. In this way, the phosphorylation and degradation of β-catenin are prevented, enabling unphosphorylated β-catenin to <u>accumulate and translocate</u> to the nucleus, where it alters the pattern of gene transcription

> In the absence of Wnt signaling, Wnt-responsive genes are <u>kept silent</u> by an <u>inhibitory complex</u> of transcription regulatory proteins. The complex includes proteins of the **<font color="0000EE">LEF1/TCF family</font>** bound to a co-repressor protein of the **<font color="0000EE">Groucho</font>** family (see Figure 15–60A).
>
> + In response to a Wnt signal, **β-catenin** enters the nucleus and binds to the **LEF1/TC**F proteins, <u>displacing</u> **Groucho**. The **β-catenin** now functions as a coactivator, inducing the transcription of the Wnt target genes (see Figure 15–60B).
>
> Thus, as in the case of Notch signaling, **Wnt/β-catenin signaling** triggers a switch <u>from transcriptional repression to transcriptional activation.</u>

<img src="https://20190531-1259353497.cos.ap-guangzhou.myqcloud.com/Cell%20Biology/image-20200709194707975.png" alt="image-20200709194707975" style="zoom:100%;" />
Co-receptor: LRP ( LDL-receptor-related protein) and Frizzled 

Latent transcription regulators: $\beta$-catenin 

Scaffold protein: 

+ Adenomatous polyposis coli (APC) 
+ axin

> Among the genes activated by β-catenin is **<font color="EE0000">Myc</font>**, which encodes a protein (**Myc**) that is an important regulator of **cell growth** and **proliferation** (discussed in Chapter 17).
>
> Mutations of the **<font color="EE0000">Apc</font>** gene occur in 80% of human <u>colon cancers</u> (discussed in Chapter 20).
>
> Various secreted **inhibitory proteins** regulate Wnt signaling in development. 
>
> + Some <u>bind to the LRP receptors and promote their down-regulation</u>
> + whereas others <u>compete with **Frizzled** receptors</u> for secreted Wnts. 
> + In Drosophila at least, Wnts activate **negative feedback loops**, in which Wnt target genes encode proteins that help shut the response off; some of these proteins <u>inhibit **Dishevelled**</u>, and others are <u>secreted inhibitors</u>.

## Hedgehog pathway

> Hedgehog Proteins Bind to **Patched**, Relieving Its Inhibition of **Smoothened**
>
> Hedgehog proteins and Wnt proteins act in similar ways. Both are **secreted signal molecules**, which act as **local mediators** and **morphogens** in many developing invertebrate and vertebrate tissues.
>
> + Both proteins are **modified** by covalently attached **lipids**, depend on secreted or cell-surface-bound **heparan sulfate proteoglycans** (discussed in Chapter 19) for their action, and activate latent transcription regulators by <u>inhibiting their degradation</u>
>
> The **Hedgehog proteins** were discovered in Drosophila, where this protein family has only one member. Mutation of the Hedgehog gene produces a larva covered with <u>spiky processes (denticles)</u>, like a hedgehog.
>
> At least three genes encode Hedgehog proteins in vertebrates—**<font color="EE0000">Sonic</font>**, **<font color="EE0000">Desert</font>**, and **<font color="EE0000">Indian hedgehog</font>**. <u>The active forms of all Hedgehog proteins are covalently coupled to **cholesterol**, as well as to a **fatty acid chains**</u>

> The effects of Hedgehog are mediated by a **latent transcription regulator** called <font color="EE0000">**Cubitus interruptus** (**Ci**)</font>, the regulation of which is reminiscent of the regulation of **β-catenin** by Wnts.
>
> + In the absence of a Hedgehog signal, **Ci** is <u>ubiquitylated and proteolytically</u> cleaved in proteasomes. Instead of being completely degraded, however, Ci is processed to <u>form a smaller fragment</u>, which accumulates in the nucleus, where it acts as a transcriptional repressor, helping to <u>keep Hedgehog-responsive genes silent.</u>
> + The proteolytic processing of the Ci protein depends on its phosphorylation by three protein kinases—**<font color="EE0000">PKA</font>** and two kinases also used in the Wnt pathway, namely **<font color="EE0000">GSK3</font>** and **<font color="EE0000">CK1</font>**.
> + As in the Wnt pathway, the proteolytic processing occurs in a multiprotein complex. The complex includes the protein kinase ***<font color="EE0000">Fused</font>*** and a **scaffold protein** ***<font color="EE0000">Costal2</font>***, which stably associates with **Ci,** recruits the three other kinases, and binds the complex to **microtubules**, thereby keeping unprocessed **Ci** out of the nucleus

> Hedgehog functions by <u>blocking the proteolytic processing of **Ci**,</u> thereby changing it into a **transcriptional activator**. It does this by a convoluted signaling process that depends on three transmembrane proteins: <font color="EE0000">**Patched**, **iHog**, and **Smoothened**</font>
>
> + **Patched** is predicted to cross the plasma membrane 12 times, and, although much of it is in intracellular vesicles, some is on the cell surface where it can bind the Hedgehog protein.
> + **iHog** is also on the cell surface and is thought to serve as a co-receptor for Hedgehog.
> + **Smoothened** is a seven-pass transmembrane protein with a structure very <u>similar to a GPCR</u>, but it does not seem to act as a Hedgehog receptor or even as an activator of G proteins; <u>it is controlled by Patched and iHog</u>.
>
> In the absence of a Hedgehog signal, Patched employs an unknown mechanism to <u>keep Smoothened sequestered</u> and inactive in intracellular vesicles (see Figure 15–61A).
>
> The binding of Hedgehog to iHog and Patched inhibits the activity of Patched and induces its endocytosis and degradation.
>
> + The result is that Smoothened is liberated from inhibition and translocates to the plasma membrane, where it recruits the protein complex containing **Ci,** **Fused**, and **Costal2**.
>
> Hedgehog signaling can <u>promote cell proliferation</u>, and excessive Hedgehog signaling can lead to cancer

<img src="https://20190531-1259353497.cos.ap-guangzhou.myqcloud.com/Cell%20Biology/image-20200709194805512.png" alt="image-20200709194805512" style="zoom:100%;" />
Patched is predicted to cross the plasma membrane 12 times 

iHog is also on the cell surface and is thought to serve as a co-receptor for Hedgehog. 

Smoothened is a seven-pass transmembrane 

It is controlled by Patched and iHog.

## Circadian clock 

> Circadian Clocks Contain Negative Feedback Loops That Control Gene Expression
>
> The internal oscillators that control such **diurnal rhythms** are called **circadian clocks.**
>
> External signals indicating the time of day cause **small adjustments** in the running of the clock, so as to keep the organism **in synchrony** with its environment.
>
> in almost all multicellular organisms, including humans, the timekeepers are **individual cells**. 
>
> + Thus, a clock that operates in each member of a specialized group of brain cells (the **<font color="EE0000">SCN cells</font>** in the **suprachiasmatic nucleus** of the **hypothalamus**) controls our diurnal cycles of sleeping and waking, body temperature, and **hormone release**.
>
> In the intact body, the SCN cells receive neural cues from the retina, entraining the **SCN cells** to the daily cycle of light and dark; they also send information about the time of day to another brain area, the **pineal gland (松果腺；松果体)**, which relays the time signal to the rest of the body by releasing the hormone **melatonin（褪黑激素）** in time with the clock.
>
> + The key principle is that circadian clocks generally depend on **negative feedback loops**
>
> In Drosophila and many other animals, including humans, the heart of the circadian clock is a **delayed negative feedback loop** based on **transcription regulators**: accumulation of certain gene products switches off the transcription of their own genes

<img src="https://20190531-1259353497.cos.ap-guangzhou.myqcloud.com/Cell%20Biology/image-20200709195344032.png" alt="image-20200709195344032" style="zoom:100%;" />
The internal oscillators that control such diurnal rhythms are called **circadian clocks**. 

A central feature of the clock is the periodic accumulation and decay of two transcription regulatory proteins 

+ <font color="EE0000">Tim</font> (short for timeless) 
+ <font color="EE0000">Per</font> (short for period). 

Negative feedback 

In fly, there are no photoreceptor, fly uses **cryptochrome** (flavoprotein) to sense the light

### 1. Oscillation of circadian clock in cyanobacteria

> Three Proteins in a Test Tube Can Reconstitute a Cyanobacterial Circadian Clock 
>
> The core oscillator in this organism is remarkably simple, being composed of just three proteins—<font color="EE0000">**KaiA, KaiB, and KaiC**</font>. The central player is **<font color="EE0000">KaiC</font>**, a <u>multifunctional enzyme</u> that catalyzes its own <u>phosphorylation and dephosphorylation</u> in a 24-hour cycle: 
>
> + it gradually phosphorylates itself sequentially at two sites during the day and <u>dephosphorylates itself during the night.</u>
>
> This timing depends on interactions with the two other Kai proteins: 
>
> 1. **KaiA** binds to **unphosphorylated KaiC** and <u>stimulates KaiC autophosphosphorylation</u>, first at one site and then, with a delay, at the other. 
> 2. The second phosphorylation promotes the binding of the third protein, **KaiB**, which <u>blocks the stimulatory effect of KaiA</u> and thereby allows KaiC to dephosphorylate itself, bringing KaiC back to its dephosphorylated state.
>
> Circadian oscillations in **KaiC** phosphorylation lead to parallel rhythms in the expression of large numbers of genes involved in controlling <u>metabolic activities</u> and <u>cell division</u>

<img src="https://20190531-1259353497.cos.ap-guangzhou.myqcloud.com/Cell%20Biology/image-20200709200018756.png" alt="image-20200709200018756" style="zoom:100%;" />
KaiC is a combined kinase and phosphatase that phosphorylates and dephosphorylates itself on two adjacent sites. 

+ In the absence of other proteins, the phosphatase activity is dominant, and the protein is mostly unphosphorylated. 

The binding of KaiA to KaiC suppresses the phosphatase activity and promotes the kinase activity leading to KaiC phosphorylation.

+ This form of KaiC interacts with KaiB, which blocks the stimulatory effects of KaiA, thereby reducing the rate of KaiC phosphorylation and allowing dephosphorylation to occur. 

Diphosphorylated KaiC increases in abundance during the day and peaks around dusk. 

<font color="EE0000">RpaA</font>: a transcription regulator

# 七、Plant signaling

> Receptor Serine/Threonine Kinases Are the Largest Class of Cell-Surface Receptors in Plants
>
> Most cell-surface receptors in plants are enzyme-coupled. However, whereas the largest class of enzyme-coupled receptors in animals is the **receptor tyrosine kinase (RTK)** class, this type of receptor is extremely rare in plants. Instead, plants rely largely on a great diversity of transmembrane receptor serine/threonine kinases
>
> The most abundant types of these receptors have a **tandem array** of **extracellular leucine-rich repeat** structures and are therefore called **leucine-rich repeat (LRR) receptor kinases**.
>
> + There are about 175 **LRR receptor** kinases encoded by the Arabidopsis genome. These include a protein called **<font color="EE0000">Bri1</font>**, which forms part of a cell-surface steroid hormone receptor
> + Plants synthesize a class of steroids that are called **brassinosteroids (油菜素类固醇)** because they were originally identified in the mustard family Brassicaceae, which includes Arabidopsis.
> + Binding of a brassinosteroid to a **Bri1** cell-surface receptor kinase initiates an intracellular signaling cascade that uses a <font color="EE0000">**GSK3**</font> protein kinase and a protein phosphatase to regulate the phosphorylation and degradation of specific transcription regulatory proteins in the nucleus, and thereby specific gene transcription.
>
> The **lectin receptor kinases**, for example, have extracellular domains that bind **carbohydrate** signal molecules.

## Response to stimuli: tropisms

<img src="https://20190531-1259353497.cos.ap-guangzhou.myqcloud.com/Cell%20Biology/image-20200709200405435.png" alt="image-20200709200405435" style="zoom:100%;" />
## Plant hormones

<img src="https://20190531-1259353497.cos.ap-guangzhou.myqcloud.com/Cell%20Biology/image-20200709200522231.png" alt="image-20200709200522231" style="zoom:50%;" />

Plant cells are not using RTKs, steroid hormones, cyclic AMPs 

GPCRs are known for plants, but there are few of them 

In contrast, plants have specific receptors for specific plant molecules—plant hormones

## Similar signaling pathways exist in plants to regulate plant growth

### 1. Ethylene

> Ethylene Blocks the Degradation of Specific Transcription Regulatory Proteins in the Nucleus
>
> Various plant growth regulators (also called plant hormones) help to coordinate plant development. They include **ethylene (乙烯)**, **auxin (植物生长素,植物激素)**, **cytokinins (细胞激肽类)**, **gibberellins (赤霉素)**, and **abscisic acid (脱落酸)**, as well as **brassinosteroids (油菜素类固醇).**
>
> The specific effect depends on **environmental conditions**, the **nutritional state** of the plant, the **responsiveness** of the target cells, and which **other growth regulators** are acting.
>
> **Ethylene** is an important example. This small gas molecule (Figure 15–69A) can influence plant development in various ways; it can, for example, <u>promote fruit ripening, leaf abscission, and plant senescence</u>. It also functions as a stress signal in response to <u>wounding, infection, flooding, and so on</u>
>
> Plants have various ethylene receptors, which are located in the endoplasmic reticulum and are all structurally related. They are **dimeric**, **multipass** transmembrane proteins, with a **copper-containing ethylene-binding domain** and a domain that interacts with a cytoplasmic protein called <font color="EE0000">**CTR1**</font>, which is closely related in sequence to the **<font color="EE0000">Raf</font>** **MAP kinase kinase kinase** discussed earlier
>
> + Surprisingly, it is the empty receptors that are active and keep **CTR1** active. By an unknown signaling mechanism, active **CTR1** stimulates the **ubiquitylation** and **degradation** in proteasomes of a nuclear transcription regulator called **<font color="EE0000">EIN3</font>**, which is required for the transcription of **ethylene-responsive genes**.

+ Enzyme signaling

<img src="https://20190531-1259353497.cos.ap-guangzhou.myqcloud.com/Cell%20Biology/image-20200709200558060.png" alt="image-20200709200558060" style="zoom: 43%;" height = 1500 width = 1400/>

Ethylene pathway 

+ Ethylene promote fruit ripening, leaf abscission, and plant senescence. 
+ It also functions as a stress signal in response to wounding, infection, flooding, and so on. 
+ Ethylene receptor is somewhat similar to enzyme-coupled receptors of animals but it is dimeric and active with an absence of signal (!) 
+ Ethylene presence will make receptor kinase inactive and transcription regulators will not degrade but start to activate transcription

### 2. The auxin signaling pathway

> Regulated Positioning of Auxin Transporters Patterns Plant Growth
>
> The plant hormone **auxin**, which is generally indole-3-acetic acid (Figure 15–71A), binds to receptor proteins <u>in the nucleus</u>. It helps plants grow <u>toward light</u>, grow upward rather than branch out, and grow their roots downwards 
>
> + It also regulates organ initiation and positioning and helps plants flower and bear fruit.
>
> auxin influences **gene expression** by controlling the **degradation** of **transcription regulators**. It works by stimulating the ubiquitylation and degradation of repressor proteins that block the transcription of auxin target genes in unstimulated cells
>
> Specific plasma-membrane-bound **influx transporter proteins** and **efflux transporter proteins** move auxin into and out of plant cells, respectively.
>
> The efflux transporters can be distributed **asymmetrically** in the plasma membrane to make the efflux of auxin **directional**.
>
> In some regions of the plant, the localization of the auxin transporters, and therefore the direction of auxin flow, is highly **dynamic** and **regulated**
>
> + A cell can rapidly <u>redistribute transporters</u> by controlling the traffic of vesicles containing them.
> + A cell can redistribute these transporters on its surface by <u>inhibiting their endocytosis</u> in one domain of the plasma membrane, causing the transporters to accumulate there

<img src="https://20190531-1259353497.cos.ap-guangzhou.myqcloud.com/Cell%20Biology/image-20200709200629161.png" alt="image-20200709200629161" style="zoom:100%;" />
Auxin 

+ are a group of related hormones and are responsible for a wide range of growth and development effects in plants. 
+ promotes initiation of lateral roots, new leaves 
+ regulates elongation of stem and root cells

#### Auxin transport and rot gravitropism

<img src="https://20190531-1259353497.cos.ap-guangzhou.myqcloud.com/Cell%20Biology/image-20200709200827600.png" alt="image-20200709200827600" style="zoom:100%;" />
### 3. Photoperiod

<img src="https://20190531-1259353497.cos.ap-guangzhou.myqcloud.com/Cell%20Biology/image-20200709200928835.png" alt="image-20200709200928835" style="zoom:100%;" />
Florists apply knowledge of the photoperiod of particular plants to bring us flowers out of season.

#### Light response mediated by phytochromes

> Phytochromes Detect Red Light, and Cryptochromes Detect Blue Light
>
> Plants have thus evolved a large set of **light-sensitive proteins** to monitor the **quantity**, **quality**, **direction**, and **duration** of light. These are usually referred to as photoreceptors.
>
> + However, because the term photoreceptor is also used for light-sensitive cells in the animal retina (see Figure 15–38), we shall use the term **photoprotein** instead
>
> All photoproteins sense light by means of a <u>covalently attached light-absorbing chromophore</u>, which changes its shape in response to light and then induces a change in the protein's conformation
>
> The best-known plant photoproteins are the **phytochromes**, which are present in all plants and in some algae but are absent in animals. These are dimeric, cytoplasmic **serine/threonine kinases**, which respond differentially and reversibly to **red** and **far-red light**:
>
> + whereas red light usually activates the kinase activity of the phytochrome, <u>far-red light inactivates it</u>. When activated by red light, the phytochrome is thought to <u>phosphorylate itself</u> and then to phosphorylate one or more other proteins in the cell.

> Plants sense blue light using photoproteins of two other sorts, **phototropin** and **cryptochromes**
>
> + **Phototropin** is associated with the plasma membrane and is partly responsible for phototropism, the tendency of plants to grow toward light
> + Phototropism occurs by directional cell elongation, which is stimulated by auxin, but the links between phototropin and auxin are unknown.
> + **Cryptochromes** are **flavoproteins** that are sensitive to blue light. They are structurally related to blue-light-sensitive enzymes called photolyases, which are involved in the **repair** of ultraviolet-induced DNA damage in all organisms, except most mammals

<img src="https://20190531-1259353497.cos.ap-guangzhou.myqcloud.com/Cell%20Biology/image-20200709201005556.png" alt="image-20200709201005556" style="zoom:100%;" />
<img src="https://20190531-1259353497.cos.ap-guangzhou.myqcloud.com/Cell%20Biology/image-20200709201013039.png" alt="image-20200709201013039" style="zoom:100%;" />
<img src="https://20190531-1259353497.cos.ap-guangzhou.myqcloud.com/Cell%20Biology/image-20200709201021300.png" alt="image-20200709201021300" style="zoom:100%;" />