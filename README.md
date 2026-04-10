# 🌳 Evolutionary Phylogenetics & Conserved Domain Analysis

### 📌 About This Repository
Evolution is the ultimate filter for biological importance; if a protein domain is conserved across hundreds of millions of years of divergence, it is fundamentally critical to cellular life. 

This repository provides an R-based computational pipeline for analyzing evolutionary relationships. It demonstrates how to perform Multiple Sequence Alignments (MSA), calculate evolutionary distances, construct phylogenetic trees, and infer functional overlap between seemingly unrelated species.

### 🎯 Objective
To construct Unweighted Pair Group Method with Arithmetic Mean (UPGMA) phylogenetic trees and analyze the conservation of critical signaling domains (e.g., MAPK1) across diverse eukaryotic lineages.

### 🛠️ Core Technologies & Libraries
* **Sequence Handling:** `Biostrings`
* **Alignment:** `msa`
* **Phylogenetics:** `ape`, `phangorn`
* **Visualization:** Base R graphics, `ggtree`

### 📂 Modules Included
1. **Multiple Sequence Alignment (MSA):** Utilizing the `msa` package (ClustalW) to align diverse amino acid sequences and identify highly conserved sequence blocks.
2. **Distance Matrix Computation:** Calculating pairwise evolutionary distances based on amino acid substitution models to quantify species divergence.
3. **UPGMA Tree Construction:** Building hierarchical clustering models (UPGMA) and exporting high-resolution phylogenetic trees.
4. **Evolutionary Functional Analysis:** Interpreting branch lengths and clustering topography to map functional conservation (e.g., investigating why human and *Arabidopsis* MAPK1 sequences cluster tightly despite massive evolutionary distance).
