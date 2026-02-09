# Social Network Analysis of Protein–Protein Interactions (Human Body)

An **academic application of social network analysis (SNA)** techniques to **protein–protein interaction (PPI) networks**, aimed at identifying **biologically critical proteins** involved in antiviral responses using **centrality measures**.

**Context:** Introduction to Social Networks – University Coursework (2023)  
**Domain:** Network Science · Graph Analysis · Computational Biology  
**Type:** Academic Network Analysis Project

---

## Project Overview

This project applies **graph-theoretic and social network analysis concepts** to study **protein interaction networks** in the human body.

Proteins are modeled as **nodes**, and their interactions as **edges**, forming a large-scale biological network.  
By computing multiple **node centrality measures**, the project identifies proteins that occupy **structurally important positions**, which often correspond to **biological significance** in antiviral defense mechanisms.

The work emphasizes:
- Network modeling and visualization
- Centrality-based importance ranking
- Cross-tool validation (Cytoscape + R)
- Interpretability of biological networks

---

## Aim

To identify **key proteins** in the human protein interaction network by analyzing their **structural roles** using centrality measures, and to visualize how these proteins influence information flow and connectivity within the network.

---

## Hypothesis

Proteins with high centrality values (degree, betweenness, closeness, eigenvector) act as **critical hubs or bridges** in the biological network and are more likely to play essential roles in **viral response and cellular regulation**.

---

## Methodology

The analysis applies four complementary **centrality metrics**:

### 1. Degree Centrality
- Measures the number of direct interactions
- Identifies **hub proteins** with many connections

### 2. Betweenness Centrality
- Measures how often a protein lies on shortest paths
- Identifies **bridge proteins** controlling information flow

### 3. Closeness Centrality
- Measures average distance to all other proteins
- Identifies proteins with **fast network-wide influence**

### 4. Eigenvector Centrality
- Measures influence based on connected neighbors
- Highlights **globally influential proteins**, not just highly connected ones

Using multiple measures avoids bias toward a single definition of “importance”.

---

## Tools & Technologies

### Cytoscape
- Large-scale network visualization
- Network subsetting for tractability
- Built-in computation of basic centralities
- Interactive exploratory analysis

### R Studio
- Independent verification of centrality calculations
- Eigenvector centrality computation
- Statistical processing using `igraph`
- Reproducible scripting (`RFILE.R`)

### Microsoft Excel
- Data inspection and result presentation
- Tabular reporting of ranked proteins

---

## Data Description

### Input Network Files
- `kras network.xml`
- `kras network.xgmml`
- `kras network.graphml`
- `kras network default network.csv` (edge list)
- `human node.csv` (node attributes)

### Node Attributes Include
- Degree, betweenness, closeness, eigenvector centrality
- Protein names and identifiers
- Biological annotations (species, interactor type)
- Synonyms and metadata

---

## Workflow

1. Import network files into **Cytoscape**
2. Visualize global network structure
3. Extract relevant subnetworks for analysis
4. Compute centrality measures
5. Validate results using **R (igraph)**
6. Interpret biologically significant proteins
7. Export results for reporting

---

## Key Findings

The analysis reveals:

- **Hub proteins** with high degree centrality
- **Bridging proteins** critical for network connectivity
- Proteins capable of rapid influence across the network
- Highly influential proteins identified by eigenvector centrality

These proteins are strong candidates for **biological importance** in antiviral response pathways.

---

## Technical Characteristics

- **Network Type:** Protein–Protein Interaction (PPI)
- **Scale:** Large biological network (subset-based analysis)
- **Node Types:** Proteins, genes, RNAs
- **Species:** *Homo sapiens*
- **Data Source:** Protein interaction databases

---

## Limitations

- Large network size requires subnetwork extraction
- Eigenvector centrality is computationally expensive
- Incomplete biological annotations for some proteins
- Static network (no temporal dynamics)

---

## Future Work

- Integrate additional biological databases
- Disease-specific network analysis
- Temporal or dynamic interaction modeling
- Functional enrichment analysis of hub proteins
- Machine learning on network-derived features

---

## Project Structure

```

Intro to Social Project/
├── RFILE.R
├── data/
│   ├── kras network.xml
│   ├── kras network.xgmml
│   ├── kras network.graphml
│   ├── kras network default network.csv
│   ├── human node.csv
│   └── new.csv
└── social project/

```

---

## Usage

### Cytoscape
1. Open Cytoscape
2. Import network file (XML / XGMML / GraphML)
3. Apply layout algorithms
4. Compute network statistics
5. Export results

### R Studio
1. Open `RFILE.R`
2. Load required libraries (`igraph`)
3. Import node and edge data
4. Run centrality computations
5. Export validated results

---

## Engineering Focus

This project emphasizes:
- Network science fundamentals
- Centrality interpretation beyond degree
- Cross-tool validation
- Biological insight through graph structure
- Application of social network theory to biology

It is designed as a **network analysis foundations project**, not a bioinformatics pipeline.

---

**Status:** Completed academic project  
**Scope:** Network science & biological systems  
**Type:** Social network analysis (PPI networks)
```
