---
title: L8 Ion gradients across the membrane
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
abbrlink: b6a297cf
date: 2020-07-02 19:30:30
updated: 2020-07-02 19:30:30
---

# 一、Membrane potential

> A **membrane potential** arises when there is a **difference** in the electrical charge on the two sides of a membrane

## K^+^ Ion

<img src="https://20190531-1259353497.cos.ap-guangzhou.myqcloud.com/Cell%20Biology/image-20200310175539681.png" alt="image-20200310175539681" style="zoom: 67%;" />

Solution inside and outside the cell is electrically neutral because the positive ions are paired up with negative anions.

Cells confine many organic molecules, which are negatively changed and collectively called <u>fixed anions</u>, which are balanced by accompanying cations including Na^+^, K^+^ etc.

+ Na^+^-K^+^ pump pumps Na^+^ out and K^+^ in, K^+^ does most work for balancing the charges.

The cell must contain equal quantities of positive and negative charges, i.e., <u>the cell is electrically **neutral**.</u> (电中性)

+ How does a membrane potential exist if cells are electrically neutral overall?
 + 负责构成potential的离子占细胞内总离子数目比较少，因此细胞总体仍然呈电中性

K^+^ can move freely into and out of cells through <u>K^+^ leak channels</u> in the plasms membrane along the concentration difference (<u>facilitated diffusion</u>).

> The <u>net efflux of K^+^ halts</u> when the membrane potential reaches a value at which this electrical driving force on K^+^ exactly balances the effect of its concentration gradient—that is, <u>when the electrochemical gradient for K^+^ is zero</u>
>
> The equilibrium condition, in which there is <u>no net flow of ions across the plasma membrane</u>, defines the **resting membrane potential** for this idealized cell.
>
> Movement of only <u>a minute number of inorganic ions</u> across the plasma membrane through ion channels suffices to <u>set up the membrane potential</u>.

### 1. The K^+^ Channel and Related Pump

The K^+^ channel: an important channel in generating membrane potential

#### Na^+^  -  K^+^ Pump

<img src="https://20190531-1259353497.cos.ap-guangzhou.myqcloud.com/Cell%20Biology/image-20200310181807516.png" alt="image-20200310181807516" style="zoom:80%;" />

The Na^+^-K^+^ ATPase is a major regulator of osmolarity and it is an **electrogenic** pump: export of <u>3 Na^+^</u> vs import of <u>2 K^+^.</u> 

+ But seldom directly contribute more than 10 % to the membrane potential <u>in animal</u> cells. (In animal cells always uses K^+^ leak channel)

Nevertheless, It is still important (In plant and Fungi)!

#### Bacteria K^+^ Channel

<img src="https://20190531-1259353497.cos.ap-guangzhou.myqcloud.com/Cell%20Biology/image-20200310182034606.png" alt="image-20200310182034606" style="zoom:67%;" />

In resting cells it is called **leak channels**. 

K^+^ channels allow flow in and out of K^+^. 

Due to high K^+^ concentration inside the cell, each K^+^ that is transported out by K^+^ channel leaves a negative charge inside, resulting in building up of a membrane potential.

## Origin of Membrane Potential

<img src="https://20190531-1259353497.cos.ap-guangzhou.myqcloud.com/Cell%20Biology/image-20200310180227992.png" alt="image-20200310180227992" style="zoom:100%;" />
[K^+^]in > [K^+^]out, Normally, K^+^ leak channels are open randomly and let K^+^ to move freely. 

+ However, there are still much more K^+^ inside than outside because when it leaks out, <u>electric force</u> will stop this process at some point. 

This point is a resting potential, ≈ –20 – 120 mV, depending on the organisms and cell types.

## Membrane Potential

Difference in the electrical charges on the two sides of the membrane

Origin: The equilibrium condition of ions across the membrane is reached when <u>electrical driving force + concentration gradient (i.e. electrochemical concentration) = 0,</u> i.e. when there is no net flow of ions across the membrane.

Results from <u>electrogenic pump (e.g. Na^+^-K^+^ pump) in mitochondria</u>, and plasma membrane of plant and fungi, and passive ion diffusion (e.g. K^+^ channels) in plasma membrane of animal cells.

<u>The more permeable the membrane for a given ion, the more strongly the membrane potential tends to be driven towards the equilibrium value for that ion.</u> 

+ **→** Changes in a membrane’s permeability to ions can cause significant changes in the membrane potential 
 + **→** Key principle relating the electrical excitability of cells to the activities of ion channels on those cells. 

Membrane potential is calculated with **Nernst equation**.

### 1. Nerest Equation

> Nernst equation, quantifies the equilibrium condition

Nernst equation: connects chemical and electrical potentials

> The voltage gradient and the concentration gradient of the ion across the membrane. When these two influences just balance each other, the electrochemical gradient for the ion is zero

$$
V_{i}  -  V_{o} = V = \frac{RT}{zF}\ln{\frac{C_o}{C_i}}
$$

+ V = the equilibrium potential in volts (**internal potential minus external potential**) 
+ Co and Ci = outside and inside concentrations of the ion, respectively 
+ R = the gas constant (8.3 J mol^–1^ K^–1^) T = the absolute temperature (K) 
+ F = Faraday’s constant (9.6 × 10^4^ J V^–1^ mol^–1^) 
+ z = the valence (charge) of the ion 
+ ln = logarithm to the base *e*

Free energy changes/mole of solute molecules when the solute moves across the plasma membrane:

+ $\Delta G_{conc.} =  - RT \ln{C_{o}/C_{i}}$ (C~o~ and C~i~ are outside and inside concentrations of ion)

Free energy cost /mole of solute molecules when the solute moves across the plasma membrane whose inside is at a voltage *V* relative to the outside: 

+ $\Delta G_{volt} = z\text{FV}$

The equilibrium condition is reached when electrochemical driving force = concentration gradient, i.e., $\Delta G_{conc.} + \Delta G_{volt} = 0$

+ $z\text{FV}-RT \ln{C_{o}/C_{i}} = 0$
+ V = 2.3 (RT/$z$F) $\log_{10}{C_{0}/C_{i}}$
+ V = 62 mV (at 37℃, a univalent cation with C~0~/C~i~= 10)

$V_{K^+^}$ =  - 89 mV for a typical cell, where C~0~= 5 mM and C~i~ = 140 mM, at which no net flow of K^+^. 

V~M~  - V~K^+^~ = net force driving K^+^ out of the cell.

> The **resting potential** of an animal cell varies between **–20 mV and –120 mV**, depending on the organism and cell type
>
> The more permeable the membrane for a given ion, the more strongly the membrane potential tends to be driven toward the equilibrium value for that ion. Consequently, changes in a membrane’s permeability to ions can cause significant changes in the membrane potential.

# 二、Signalling in nerve cells

## Structure of a Nerve

<img src="https://20190531-1259353497.cos.ap-guangzhou.myqcloud.com/Cell%20Biology/image-20200310182137436.png" alt="image-20200310182137436" style="zoom: 67%;" />

Most nerve cells are Neuroglia（神经胶质细胞）and neurons, neurogila is more than neurons.

## Neurons

> The **fundamental task** of a **neuron**, or **nerve cell**, is to **receive**, **conduct**, and **transmit signals**
>
> The signal spreads because an electrical disturbance produced in one part of the membrane spreads to other parts, although the disturbance becomes weaker with increasing distance from its source, unless the neuron expends energy to <u>amplify it as it travels.</u>
>
> This traveling wave of electrical excitation, known as an **action potential**, or **nerve impulse**, can carry a message without attenuation from one end of a neuron to the other at speeds of 100 meters per second or more

The functional and structural unit of the nervous system

Specialized to conduct information from one part of the body to another

There are many, many different types of neurons but most have certain structural and functional characteristics in common:

<img src="https://20190531-1259353497.cos.ap-guangzhou.myqcloud.com/Cell%20Biology/image-20200310182351566.png" alt="image-20200310182351566" style="zoom:67%;" />

+ Cell body (soma) 

+ One or more specialized, slender processes (axons/dendrites) 

+ An input region (dendrites/soma) 

+ A conducting component (axon) 

+ A secretory (output) region (axon terminal)

## Neurogila

Outnumber neurons by about 10 to 1 (the guy on the right had an inordinate amount of them).

6 types of supporting cells

+ 4 are found in the CNS (e.g. **Oligodendrocytes**（少突胶质细胞）)
+ 2 are found in the PNS (e.g. **Schwann cells**)

Oligodendrocytes and Schwann cells contribute to the myelin sheath

> The axons of many vertebrate neurons are insulated by a **myelin sheath**, which greatly <u>increases the rate at which an axon can conduct an action potential</u>
>
> Myelin is formed by specialized non-neuronal supporting cells called **glial cells**. **Schwann cells** are the glial cells that myelinate axons in **peripheral nerves**, and **oligodendrocytes** do so in the **central nervous system.**
>
> thereby insulating the axonal membrane so that little current can leak across it. The myelin sheath is interrupted at regularly spaced **nodes of Ranvier**, where almost all the Na^+^ channels in the axon are concentrated (Figure 11–33C). 
>
> + This arrangement allows an action potential to propagate along a myelinated axon by jumping from node to node, a process called **saltatory conduction**. 

+ Myelination in PNS:

<img src="https://20190531-1259353497.cos.ap-guangzhou.myqcloud.com/Cell%20Biology/image-20200310182604872.png" alt="image-20200310182604872" style="zoom: 80%;" />

+ Myelination in the CNS:

<img src="https://20190531-1259353497.cos.ap-guangzhou.myqcloud.com/Cell%20Biology/image-20200310182638158.png" alt="image-20200310182638158" style="zoom:100%;" />
Multiple sclerosis: demyelinating disease

+ Chronic progressive nervous disorder involving loss of myelin sheath around certain nerve fibers.
+ Affect nerve impulse propagation or failure in some regions of central nervous system. 

> Mutations in genes that encode voltage-gated Na^+^ channels in skeletal muscle cells, for example, can cause **myotonia** （肌强直）, a condition in which there is a delay in muscle relaxation after voluntary contraction, causing painful muscle spasms. In some cases, this occurs because the abnormal channels fail to inactivate normally
>
> Similarly, mutations that affect Na^+^ or K^+^ channels in the brain can cause **epilepsy** (癫痫), in which **excessive synchronized firing** of large groups of neurons causes epileptic seizures (癫痫) (convulsions, or fits).

## The Action potential: signaling in neuron

<img src="https://20190531-1259353497.cos.ap-guangzhou.myqcloud.com/Cell%20Biology/image-20200310182734564.png" alt="image-20200310182734564" style="zoom:100%;" />
### 1. Features

1. Neuron receive, conduct and transmit signals.
2. Action potential: changes in electrical potential across the neuron’s plasma membrane
3. The action potential is a traveling wave of electrical excitation.
4. Speed of an action potential can be as fast as 100 meters per second. 
5. The action potential is a direct consequence of the property of <u>voltage-gated channels.</u>

### 2. The membrane potential of a neuron

<img src="https://20190531-1259353497.cos.ap-guangzhou.myqcloud.com/Cell%20Biology/image-20200310182823504.png" alt="image-20200310182823504" style="zoom:100%;" />
The equilibrium potential is influenced by the concentration gradient and the voltage difference across the membrane.

The channel protein are always voltage-gated.

#### Voltage-gated cation channels generate action potentials

> An action potential is triggered by a **depolarization** of the plasma membrane—that is, by a shift in the membrane potential to a less negative value inside
>
> In nerve and skeletal muscle cells, a stimulus that causes sufficient depolarization promptly opens the **voltage-gated Na^+^ channels**, allowing <u>a small amount of Na^+^ to enter the cell</u> down its electrochemical gradient

##### (1) Features

1. Voltage-gated cation channels generate action potentials in electrically excitable cells: neurons, muscle cells, endocrine (内分泌) cells, and eggs.
2. Voltage-gated channels open if a membrane potential reaches a given value, resulting in changes in a membrane’s permeability to a given ion.
3. Then, this can cause significant changes in the membrane potential. 
4. Membrane potential changes leads to the close of channels again.
5. Voltage-gated cation channels are <u>evolutionarily and structurally related.</u> 

<img src="https://20190531-1259353497.cos.ap-guangzhou.myqcloud.com/Cell%20Biology/image-20200310183003916.png" alt="image-20200310183003916" style="zoom:67%;" />

##### (2) Examples

Voltage-gated Na^+^ in neuron and muscle cells

Voltage-gated Ca^2+^ in muscle, endocrine cells, and eggs

Mutations of these ion channels are linked to human diseases: e.g. **myotonia**（肌强直） and **epilepsy**（癫痫，癫痫症）

##### (3) Voltage-gated Na^+^

In neuron and skeletal muscle cells: voltage-gated Na^+^ channels opens in response to a stimulus

<img src="https://20190531-1259353497.cos.ap-guangzhou.myqcloud.com/Cell%20Biology/image-20200310183124046.png" alt="image-20200310183124046" style="zoom:100%;" />
<img src="https://20190531-1259353497.cos.ap-guangzhou.myqcloud.com/Cell%20Biology/image-20200310183129354.png" alt="image-20200310183129354" style="zoom:67%;" />

###### The work Machenism

<img src="https://20190531-1259353497.cos.ap-guangzhou.myqcloud.com/Cell%20Biology/image-20200310183307931.png" alt="image-20200310183307931" style="zoom:100%;" />
3 states of the Na^+^ channel: “closed”, “open” & “inactive”

+ Stage 与 $\Delta G$ 有关, the most energy-favorable

##### (4) Delayed K^+^ channels

Delayed K^+^ channels bring back the membrane potential 

<img src="https://20190531-1259353497.cos.ap-guangzhou.myqcloud.com/Cell%20Biology/image-20200310183429108.png" alt="image-20200310183429108" style="zoom:67%;" />

###### Features

1. Voltage-gated
2. <u>Slower kinetics (Delayed)</u> than the Na^+^ channel
3. Rapidly causes efflux of K^+^ ions

### 3. Self-amplification and propagation

> Two mechanisms act in concert to save the cell from such a **permanent electrical spasm**: the **Na^+^ channels automatically inactivate** and **voltage-gated K^+^ channels** open to restore the membrane potential to its initial negative value
>
> The Na^+^ channel is built from a single polypeptide chain that <u>contains four structurally very similar domains</u>
>
> In bacteria, in fact, the Na^+^ channel is a tetramer of four identical polypeptide chains,
>
> + Each domain contributes to the central channel, which is very similar to the K^+^ channel. <u>Each domain also contains a **voltage sensor** that is characterized by an unusual transmembrane helix, **S4**, that contains many **positively charged amino acids.**</u> 
> + As the membrane **depolarizes**, the S4 helices experience an **electrostatic pulling force** that attracts them to the now negatively charged extracellular side of the plasma membrane. <u>The resulting conformational change opens the channel</u>
> + The Na^+^ channels also have an automatic **inactivating mechanism**, which causes the channels to reclose rapidly even though the membrane is still depolarized.
> + The Na^+^ channels remain in this **inactivated state**, unable to reopen, <u>until after the membrane potential has returned to its initial negative value</u>. The time necessary for a sufficient number of Na^+^ channels to recover from inactivation to support a new action potential, termed the **refractory period**, limits the repetitive firing rate of a neuron
>
> In this way, the action potential sweeps like a wave from the initial site of depolarization over the entire plasma membrane

#### Process

<img src="https://20190531-1259353497.cos.ap-guangzhou.myqcloud.com/Cell%20Biology/image-20200310183611539.png" alt="image-20200310183611539" style="zoom:80%;" />

<img src="https://20190531-1259353497.cos.ap-guangzhou.myqcloud.com/Cell%20Biology/image-20200310183631496.png" alt="image-20200310183631496" style="zoom:100%;" />
#### Features

1. Voltage-gated channels are responsible for the amplification and propagation of an action potential along an axon.
2. If the transmit <u>distence becomes very long</u>, <u>the signal may decay</u>. This problem is conquered by **unmyelinatel region**.

#### Action Potentials are Conducted in Unmyelinated Regions

<img src="https://20190531-1259353497.cos.ap-guangzhou.myqcloud.com/Cell%20Biology/image-20200310183809391.png" alt="image-20200310183809391" style="zoom:100%;" />
##### (1) Myelination increases the speed and efficiency of action potential propagation

<img src="https://20190531-1259353497.cos.ap-guangzhou.myqcloud.com/Cell%20Biology/image-20200310183836648.png" alt="image-20200310183836648" style="zoom:100%;" />
In the picture:

1. <font color="00CC00">Voltage-gated Na^+^ channel</font>
2. <font color="DD0000">Caspr marks the junction of axon and myelinating glial cells</font>
3. <font color="00AAFF">Voltage-gated K^+^ channel</font>

### 4. Study The Voltage-gated channels

<img src="https://20190531-1259353497.cos.ap-guangzhou.myqcloud.com/Cell%20Biology/image-20200310184140473.png" alt="image-20200310184140473" style="zoom:100%;" />
### 5. Summary of The Action Potential

<img src="https://20190531-1259353497.cos.ap-guangzhou.myqcloud.com/Cell%20Biology/image-20200310184204396.png" alt="image-20200310184204396" style="zoom:100%;" />
# 三、Channels in Synapses

## Ca^2+^ channels in pre-synaptic cells and synapses

<img src="https://20190531-1259353497.cos.ap-guangzhou.myqcloud.com/Cell%20Biology/image-20200310184321864.png" alt="image-20200310184321864" style="zoom:67%;" />

### 1. Features

Depolarization of **presynaptic membrane (突触前膜)** will cause Ca^2+^ channels to open, increase calcium concentration 1000 time more inside the cell and initiate fusion of synaptic vesicles to the membrane (for details, see lecture 11).

Fusion should be quickly stopped (one of mechanisms is through **retrograde signaling** （逆行信号）

+ i. e. a signal travels backwards from a target source to its original source 
 + e.g., **endocannabinoids**（内源性大麻素） acts as a retro-messenger)

<img src="https://20190531-1259353497.cos.ap-guangzhou.myqcloud.com/Cell%20Biology/image-20200310184356120.png" alt="image-20200310184356120" style="zoom:67%;" />

## In post-synaptic cells

Transmitter-gated ion channels convert chemical signals into electrical signals in post-synaptic cells

<img src="https://20190531-1259353497.cos.ap-guangzhou.myqcloud.com/Cell%20Biology/image-20200310184459337.png" alt="image-20200310184459337" style="zoom:67%;" />

### 1. Features

Transmitter-gated ion channels is **ligand-gated channel**, also is called **ionotropic receptor.**

**Neurotransmitter** (small molecule of given configuration) crosses synaptic cleft and binds to ligand-gated receptors

In synaptic junctions between nerve and muscle cells, **acetylcholine（乙酰胆碱）** neurotransmitter will bind to receptors in postsynaptic muscle cells (many poisons like **curare**（箭毒马鞍子） will block this destruction)

Neurotransmitters need to be quickly destroyed 

Chemical synapses (more versatile than electrical synapses, e.g. Gap junction, for details, see lecture 24)

<img src="https://20190531-1259353497.cos.ap-guangzhou.myqcloud.com/Cell%20Biology/image-20200310184539600.png" alt="image-20200310184539600" style="zoom:67%;" />

## Ionotropic receptors: transmitter-gated ion channels 

> Transmitter-Gated Ion Channels Convert Chemical Signals into Electrical Ones at Chemical Synapses
>
> Neuronal signals are transmitted from cell to cell at specialized sites of contact known as **synapses**
>
> 1. When an action potential arrives at the presynaptic site, the depolarization of the membrane opens **voltage-gated Ca^2+^ channels** that are clustered in the presynaptic membrane. Ca^2+^ influx triggers the release into the cleft of small signal molecules known as **neurotransmitters**, which are stored in membrane-enclosed synaptic vesicles and released by exocytosis (discussed in Chapter 13). 
>
> 2. The neurotransmitter diffuses rapidly across the synaptic cleft and <u>provokes an electrical change in the postsynaptic cell</u> by binding to and opening **transmitter-gated ion channels** (Figure 11–36). 
> 3. After the neurotransmitter has been secreted, it is rapidly removed: it is either <u>destroyed by specific enzymes</u> in the synaptic cleft or <u>taken up by the presynaptic nerve terminal</u> or by <u>surrounding glial cells</u>. Reuptake is mediated by a variety of **Na^+^-dependent neurotransmitter symporters** (see Figure 11–8); in this way, neurotransmitters are recycled, allowing cells to keep up with high rates of release. 
> 4. Rapid removal ensures both spatial and temporal precision of signaling at a synapse. <u>It decreases the chances that the neurotransmitter will influence neighboring cells, and it clears the synaptic cleft before the next pulse of neurotransmitter is released, so that the timing of repeated, rapid signaling events can be accurately communicated to the postsynaptic cell</u>. As we shall see, signaling via such **chemical synapses** is far more versatile and adaptable than direct electrical coupling via gap junctions at **electrical synapses** (discussed in Chapter 19), which are also used by neurons but to a much smaller extent.

> **Transmitter-gated ion channels**, also called **ionotropic receptors** (离子受体), are built for rapidly converting extracellular chemical signals into electrical signals at chemical synapses
>
> + they produce local permeability increases, and hence changes of membrane potential

Excitatory neurotransmitters: 

+ <u>open cation channels</u>, causing influx of Na^+^ and firing of action potential.

Inhibitory neurotransmitters: 

+ <u>open Cl - or K^+^ channels</u>, causing delays of action potential. 

> **Excitatory neurotransmitters** <u>open **cation channels**</u>, causing an influx of Na^+^, and in many cases Ca^2+^, that depolarizes the postsynaptic membrane toward the threshold potential for firing an action potential. 
>
> **Inhibitory neurotransmitters**, by contrast, <u>open either **Cl– channels** or **K^+^ channels**</u>, and this suppresses firing by making it harder for excitatory neurotransmitters to depolarize the postsynaptic membrane. 
>
> + the opening of Cl– channels makes it more difficult to depolarize the membrane and hence to excite the cell.
>
> Many transmitters can be either excitatory or inhibitory, depending on <u>where they are released</u>, what <u>receptors they bind to</u>, and the <u>ionic conditions that they encounter</u>

Many transmitters can be either excitatory or inhibitory, depending on <u>where they are released</u>, e.g. Acetylcholine（乙酰胆碱）

Usually:

+ excitatory transmitters: acetylcholine, （乙酰胆碱） glutamate（谷氨酸盐） (in vertebrate brain), serotonin（血清素）
+ inhibitory transmitters: **γ**-aminobutyric acid (GABA，γ-氨基丁酸), glycine（甘氨酸）

### 1. Types of chemical synapses

1. **Ionotropic receptor (促离子型受体, 离子通道型受体)**: ion channels and <u>fast</u> chemical synapses. 
2. **Metabotropic receptor (促代谢型受体, 代谢型受体)**: G-protein-coupled receptor (for details, see lecture 16) and <u>slow and more complex and longer-lasting</u>. 

> However, not all chemical signaling in the nervous system operates through these ionotropic ligand-gated ion channels. In fact, most neurotransmitter molecules that are secreted by nerve terminals, including a large variety of neuropeptides, bind to **metabotropic receptors**, which regulate ion channels only indirectly through the action of small intracellular signal molecules

> 1. **Ionotropic receptors** are ion channels and feature at fast chemical synapses. Acetylcholine, glycine, glutamate, and GABA all act on transmitter-gated ion channels, mediating excitatory or inhibitory signaling that is generally immediate, simple, and brief. 
> 2. **Metabotropic receptors** are **G-protein-coupled receptors** (discussed in Chapter 15) that bind to all other neurotransmitters (and, confusingly, also acetylcholine, glutamate, and GABA). Signaling mediated by ligand-binding to metabotropic receptors tends to be far slower and more complex than that at ionotropic receptors, and <u>longer-lasting in its consequences.</u>

#### Targeting ionotropic receptors (transmitter-gated ion channels)

1. **Snake toxins**: bind to <u>acetylcholine receptors</u> and **inhibit** them

2. **Curare** (箭毒马鞍子): bind to <u>acetylcholine receptors</u> and **block** them

3. **Barbiturates tranquilizers**（巴比妥类镇定剂） (e.g., **Valium**（安定）, **Librium**（利眠宁）): bind to <u>GABA receptors</u> to allow lower concentration of GABA to open Cl - channel

4. Psychoactive drugs: e.g., Antidepressant (抗抑郁的) drug **Prozac**（百忧解） inhibits uptake of **serotonin（血清素；5-羟色胺（血管收缩素））**.

Many drugs used to treat insomnia（失眠症，失眠）, anxiety, depression, schizophrenia（精神分裂症）, etc., are to target receptor function at the synaptic cleft. 

#### The acetylcholine receptors at the neuromuscular junction

Features

1. The acetylcholine receptors at the neuromuscular junction are excitatory transmitter-gated cation channels, 20,000 receptors/µm^2^
2. Transmitter-gated cation channel, not discriminative for Na^+^, K^+^ or Ca^2+^
3. activation by 2 molecules acetylcholine.
4. inactivation by degradation of acetylcholine (acetylcholinesterase)

<img src="https://20190531-1259353497.cos.ap-guangzhou.myqcloud.com/Cell%20Biology/image-20200310185257140.png" alt="image-20200310185257140" style="zoom:100%;" />
## Neuromuscular signal transmission

Features

+ Sequential activation of at <u>**5**</u> different sets of ion channels at neuromuscular junction

<img src="https://20190531-1259353497.cos.ap-guangzhou.myqcloud.com/Cell%20Biology/image-20200310185332719.png" alt="image-20200310185332719" style="zoom: 80%;" />

> Neuromuscular Transmission Involves the Sequential Activation of Five Different Sets of Ion Channels
>
> 1. The process is initiated when a nerve impulse reaches the nerve terminal and depolarizes the plasma membrane of the terminal. The depolarization transiently opens voltage-gated Ca^2+^ channels in this presynaptic membrane. As the Ca^2+^ concentration outside cells is more than 1000 times greater than the free Ca^2+^ concentration inside, Ca^2+^ flows into the nerve terminal. The increase in Ca^2+^ concentration in the cytosol of the nerve terminal triggers the local release of acetylcholine by exocytosis into the synaptic cleft.
> 2. The released acetylcholine binds to acetylcholine receptors in the muscle cell plasma membrane, transiently opening the cation channels associated with them. The resulting influx of Na^+^ causes a local membrane depolarization
> 3. The local depolarization opens **voltage-gated Na^+^ channels** in this membrane, allowing more Na^+^ to enter, which further depolarizes the membrane. This, in turn, opens neighboring voltage-gated Na^+^ channels and results in a self-propagating depolarization (an action potential) that spreads to involve the entire plasma membrane
> 4. The generalized depolarization of the muscle cell plasma membrane activates **voltage-gated Ca^2+^ channels** in the <u>transverse tubules</u> (T tubules— discussed in Chapter 16) of this membrane.
> 5. This in turn causes **Ca^2+^-release channels** in an adjacent region of the sarcoplasmic reticulum (SR) membrane to open transiently and release Ca^2+^ stored in the SR into the cytosol. The T-tubule and SR membranes are closely apposed with the two types of channel joined together in a specialized structure, in which activation of the voltage-sensitive Ca^2+^ channel in the T-tubule plasma membrane causes a channel conformational change that is mechanically transmitted to the Ca^2+^-release channel in the SR membrane, opening it and allowing Ca^2+^ to flow from the SR lumen into the cytoplasm (see Figure 16–35). The sudden increase in the cytosolic Ca^2+^ concentration causes the myofibrils in the muscle cell to contract

### 1. T tubules

T tubules (invagination from plasma membrane) <u>relay the action potential</u> (signal to contract) to the sarcoplasmic reticulum, to all myofibrils of the cell

<img src="https://20190531-1259353497.cos.ap-guangzhou.myqcloud.com/Cell%20Biology/image-20200310185450965.png" alt="image-20200310185450965" style="zoom:100%;" />
**T tubules** are extensions of the cell membrane that penetrate into the centre of skeletal and cardiac muscle cells.

The signal from the nerve <u>triggers an action potential in the muscle cell plasma membrane</u>, and <u>spreads swiftly into T tubules.</u>

The signal is then relayed to the **sarcoplasmic reticulum** that surrounds each myofibril like a net stocking, and causes Ca^2+^ release channel to open transiently and release Ca^2+^ stored in the SR into the cytosol, which stimulate muscle contraction (for detailed myofibril contraction, see lecture 23). 

## A neuron’s multiple synaptic inputs

Features

+ A neuron may receive input from hundreds of other neurons via thousands of synaptic terminals

<img src="https://20190531-1259353497.cos.ap-guangzhou.myqcloud.com/Cell%20Biology/image-20200310185548139.png" alt="image-20200310185548139" style="zoom:100%;" />
Single neurons are complex computation device to process multiple synaptic inputs

+ Features
 + Signals transmitted to a post synaptic cells include many excitatory and inhibitory **post synaptic potential (PSP)**.
 + For long-distance transmission, the intensity of stimulation that a neuron receives is encoded by that neuron into the <u>frequency of action potential</u> .
 + The encoding takes place at a specialized region of the axonal membrane known as the **initial segment** or **axon hillock** (轴丘；轴突丘；轴索丘), at the junction of the axon and the cell body.

<img src="https://20190531-1259353497.cos.ap-guangzhou.myqcloud.com/Cell%20Biology/image-20200310185627696.png" alt="image-20200310185627696" style="zoom: 67%;" />

> Neurotransmitter released at an excitatory synapse causes a small depolarization in the postsynaptic membrane called an **excitatory postsynaptic potential (excitatory PSP)**, whereas neurotransmitter released at an inhibitory synapse generally causes a small hyperpolarization called an **inhibitory PSP**
>
> each incoming signal initiates a local PSP, which decreases with distance from the site of the synapse
>
> For long-distance transmission, the combined magnitude of the PSP is then **translated**, or **encoded**, into the **frequency** of firing of action potentials: the greater the stimulation (depolarization), the higher the frequency of action potentials.

### 1. How does a neuron compute all signals?

> The intensity of stimulation that a neuron receives is encoded by that neuron into action potential frequency for long-distance transmission. The encoding takes place at a specialized region of the axonal membrane known as the **initial segment**, or **axon hillock**, at the junction of the axon and the cell body
>
> The three varieties of K^+^ channels have different properties; we shall refer to them as **delayed**, **rapidly inactivating**, and **Ca^2+^-activated** K^+^ channels.

Features

+ Taking place at axon hillock (initial segment of axon)

+ <u>Requires multiple channels</u>, including a combination of <u>at least 3</u> kinds of K^+^ channels

1. **Delayed K^+^ channels**: voltage-gated, slower kinetics than the Na^+^ channel

> The **delayed K^+^ channels** perform function of relation to the propagation of the action potential
>
> They are voltage-gated, but because of their **slower kinetics** they open only during the falling phase of the action potential, when the Na^+^ channels are inactive. Their opening permits an <u>efflux of K^+^ that drives the membrane back toward the K^+^ equilibrium potential</u>, which is so negative that the Na^+^ channels rapidly recover from their inactivated state. **Repolarization** of the membrane also closes the delayed K^+^ channels.


2. **Rapidly inactivating K^+^ channels**: voltage-gated, open when membrane is depolarized

> Below a certain threshold level of steady stimulation, the cell will not fire at all; above that threshold level, it will abruptly begin to fire at a relatively rapid rate
>
> The **rapidly inactivating K^+^ channels** solve the problem
>
> These, too, are **voltage-gated** and open when the membrane is depolarized, but their <u>specific voltage sensitivity and kinetics of inactivation</u> are such that they act to <u>reduce the rate of firing at levels of stimulation</u> that are <u>only just above the threshold required for firing</u>

3. **Voltage-gated Ca^2+^-channel** and **Ca^2+^ activated K^+^ channels**: adaptation

> The process of encoding is usually further modulated by the two other types of ion channels in the initial segment that were mentioned earlier—**voltage-gated** **Ca^2+^ channels** and **Ca^2+^-activated K^+^ channels**. They act together to decrease the response of the cell to an unchanging, prolonged stimulation—a process called **adaptation**
>
> the resulting **increased permeability** of the membrane to K^+^ makes the membrane **harder to depolarize,** the <u>delay between one action potential and the next is increased.</u> In this way, a neuron that is stimulated continuously for a prolonged period becomes gradually **less responsive** to the constant stimulus.

<img src="https://20190531-1259353497.cos.ap-guangzhou.myqcloud.com/Cell%20Biology/image-20200310185828559.png" alt="image-20200310185828559" style="zoom:100%;" />
#### Neuronal computation <u>depends on different types of ion channels</u>

Summary

1. In humans, there are several hundred genes encoding ion channels, with over 150 encoding voltage-gated channels. 
2. Alternative splicing of RNA transcripts and assembling channels subunits in different combinations can results in more different types of channels. 
3. Location specificity adds additional regulation

## Synaptic plasticity

> One of the crucial properties of the nervous system is its ability to **learn** and **remember**. This property depends in part on the ability of individual synapses to strengthen or weaken depending on their use—a process called **synaptic plasticity**

Synaptic plasticity: the ability of individual synapses to <u>strengthen or waken depending on their use.</u> 

In humans, it is closely related to our ability to learn.

In humans, it is found in many excitatory synapses in the central nervous system, where it is gated by both voltage and the excitatory neurotransmitter **glutamate**. 

It is also the site of action of the psychoactive drug such as phencyclidine (PCP or angel dust，苯环己哌啶(即“天使粉”,一种麻醉药和致幻剂)) which works primarily as an NMDA receptor antagonist（拮抗剂）.

### 1. Long-term potentiation (LTP)

> whereas occasional single action potentials in the presynaptic cells leave no lasting trace, a short burst of repetitive firing causes **long-term potentiation (LTP)**, such that **subsequent single action potentials** in the presynaptic cells **evoke a greatly enhanced response** in the **postsynaptic cells.**

A short burst of respective firing causes long-term potentiation (LTP, 长时程突触增强 ), which allows subsequence single action potential from pre-synaptic cell evoke a greatly enhanced responses in the post synaptic cells.

In the mammalian hippocampus, the excitatory PSP is through glutamate binding to AMPA receptor channel. 

> In the hippocampus, as elsewhere, most of the depolarizing current responsible for excitatory PSPs is carried by **glutamate-gated ion channels** called **AMPA receptors**
>
> But the current has, in addition, a second and more intriguing component, which is mediated by a separate subclass of **glutamate-gated ion channels** known as **NMDA receptors**
>
> + The **NMDA-receptor** channels are **doubly gated**, opening only when two conditions are satisfied simultaneously: <u>glutamate must be bound to the receptor</u>, and <u>the membrane must be strongly depolarized</u>. The second condition is required for releasing the **Mg2+** that normally <u>blocks the resting channel</u>. This means that NMDA receptors are normally activated only when AMPA receptors are activated as well and depolarize the membrane.

LTP in the mammalian hippocampus depends on <u>Ca^2+^ entry</u> through **NMDA (N-methyl-D-Aspartate) receptor channels**.

> If synapses were capable only of LTP they would quickly become saturated, and thus be of limited value as an information-storage device. In fact, they also exhibit **long-term depression (LTD)**, with the long-term effect of <u>reducing the number of AMPA receptors in the post-synaptic membrane.</u>

<img src="https://20190531-1259353497.cos.ap-guangzhou.myqcloud.com/Cell%20Biology/image-20200310190041871.png" alt="image-20200310190041871" style="zoom:67%;" />

<img src="https://20190531-1259353497.cos.ap-guangzhou.myqcloud.com/Cell%20Biology/image-20200310190056409.png" alt="image-20200310190056409" style="zoom:100%;" />
NMDA Receptor 被激活之后，引导更多的AMPA Receptor到膜上

NMDA (N-methyl-D-Aspartate) receptor channels are doubly gated:

+ Binding of glutamate

+ <u>Strong depolarization</u> of the membrane

### 2. Use of channelrhodopsins in study of neural circuits

> **Channelrhodopsins** are photosensitive ion channels that open in response to light
>
> In contrast to **bacteriorhodopsin**, which is a **light-driven proton pump**, **channelrhodopsin** is a **light-driven cation channel.**

Channelrhodopsins are photosensitive ion channels that open in response to light.

Structurally related to bacteriorhodopsin (see lecture 6), but channelrhodopsins are a light-driven cation channels.

Channelrhodopsins can be activated by light (optogenetic). 

Allowing neuroscientists to analyze the neurons and circuits underlying even the most complex behaviors in experimental animals, including nonhuman primates.

<img src="https://20190531-1259353497.cos.ap-guangzhou.myqcloud.com/Cell%20Biology/image-20200310190245991.png" alt="image-20200310190245991" style="zoom:100%;" />
<img src="https://20190531-1259353497.cos.ap-guangzhou.myqcloud.com/Cell%20Biology/image-20200310190252535.png" alt="image-20200310190252535" style="zoom:100%;" />
The state of the channel can be shifted as: Closed → Open → Inactivated → Closed → ···

And at the beginning, when the membrane potential is stable, it should be the *Closed* State.

In the normal circumstance, the duration of *Open* state should shorter than the other two states.