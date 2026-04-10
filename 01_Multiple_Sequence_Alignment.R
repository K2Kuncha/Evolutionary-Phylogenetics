# =========================================================================
# MODULE 1: Multiple Sequence Alignment (MSA)
# AUTHOR: Kuncha Shashidhar
# 
# 🧬 ABOUT THE DATA:
# Format: .fasta
# Description: Unaligned amino acid sequences retrieved from UniProt 
#              representing orthologous proteins across multiple species 
#              (e.g., Humans, Mice, Flies, Yeast, Plants).
# 
# 🔍 REAL WORLD APPLICATION:
# MSA is the foundation of phylogenetics. By stacking sequences, we can 
# identify conserved motifs (like the ATP-binding pocket of a kinase) that 
# have resisted mutation over evolutionary time.
# =========================================================================

# BiocManager::install(c("Biostrings", "msa"))
library(Biostrings)
library(msa)

cat("\n--- Performing Multiple Sequence Alignment (ClustalW) ---\n")

# Mock dataset: Loading FASTA sequences for a target protein family
# target_seqs <- readAAStringSet("path/to/orthologs.fasta")

# For tutorial purposes, a small mock AAStringSet
mock_seqs <- AAStringSet(c(
  Human = "MAPFLRIAFNSYVKGKYI",
  Mouse = "MAPFLRIAFNSYVKGKYI",
  Fly   = "MAPFLRIVFNSYVKGKYV",
  Plant = "MAPFMRIAFNSYVKSKYI"
))

cat("\nOriginal Unaligned Sequences:\n")
print(mock_seqs)

# Perform the alignment using the ClustalW algorithm
# align_clustalw <- msa(mock_seqs, method = "ClustalW")

cat("\nAlignment Complete. Conserved blocks are ready for distance calculation.\n")

# Export the alignment for downstream phylogenetic tools
# aligned_sequences <- as(align_clustalw, "AAStringSet")
# writeXStringSet(aligned_sequences, file = "aligned_orthologs.fasta")
