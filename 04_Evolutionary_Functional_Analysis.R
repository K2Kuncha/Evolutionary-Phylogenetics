# =========================================================================
# MODULE 4: Evolutionary Functional Analysis (Annotation)
# AUTHOR: Kuncha Shashidhar
# 
# 🧬 ABOUT THE DATA:
# Format: Clustered phylogenetic data cross-referenced with functional databases.
# Description: A tree is just a diagram until interpreted. This module links 
#              the clustered clades to their biological functions (e.g., 
#              transcription, methylation, RNA processing).
# 
# 🔍 REAL WORLD APPLICATION:
# Formally documenting why certain proteins group together. As noted in the 
# author's research, Human-Arabidopsis MAPK1 pairing suggests an ancient, 
# highly conserved functional core domain despite vast species divergence.
# =========================================================================

library(dplyr)

cat("\n--- Interpreting Phylogenetic Clusters ---\n")

# Integrating functional annotations with our cluster assignments (Reflecting Final_15 data)
cluster_analysis <- data.frame(
  UniProt_ID = c("Q92600", "Q9P013", "Q9Y221"),
  Gene_Symbol = c("CNOT9", "CWC15", "NIP7"),
  Phylo_Cluster = c(3, 3, 4),
  Biological_Function = c(
    "CCR4-NOT deadenylation complex (Transcriptional Regulation)",
    "Spliceosome component (Post-Transcriptional)",
    "Ribosome biogenesis and rRNA processing"
  )
)

cat("\nAnnotated Cluster Table:\n")
print(cluster_analysis)

cat("\n--- Evolutionary Conclusions ---\n")
cat("1. Cluster 3 Insight: Genes like CNOT9 and CWC15 cluster closely together, \n   highlighting a shared evolutionary constraint on proteins involved in \n   post-transcriptional and developmental regulation.\n")

cat("2. Cluster 4 Insight: NIP7 stands alone phylogenetically in this set, \n   indicating divergent evolutionary pressure specifically for ribosomal RNA \n   processing mechanisms.\n")
