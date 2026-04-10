# =========================================================================
# MODULE 2: Evolutionary Distance Matrix Computation
# AUTHOR: Kuncha Shashidhar
# 
# 🧬 ABOUT THE DATA:
# Format: Aligned FASTA or msa objects
# Description: Once aligned, we calculate a pairwise distance matrix. 
#              A value of 0.0 means identical; higher values indicate 
#              greater divergence (amino acid substitutions).
# 
# 🔍 REAL WORLD APPLICATION:
# Quantifying exactly how divergent a model organism's protein is from the 
# human equivalent to determine if the organism is a viable model for drug 
# testing.
# =========================================================================

# BiocManager::install("ape")
library(ape)
library(Biostrings)

cat("\n--- Computing Pairwise Evolutionary Distances ---\n")

# To run locally:
# aligned_seqs <- read.alignment("path/to/aligned_orthologs.fasta", format = "fasta")

# Calculate the distance matrix using a standard substitution model (e.g., identity or BLOSUM)
# dist_matrix <- dist.alignment(aligned_seqs, matrix = "identity")

# Mock Distance Matrix Output (representing short branch distances seen in HW_13)
mock_dist_matrix <- matrix(c(
  0.00, 0.02, 0.15, 0.18,
  0.02, 0.00, 0.16, 0.19,
  0.15, 0.16, 0.00, 0.25,
  0.18, 0.19, 0.25, 0.00
), nrow=4, dimnames=list(c("Human", "Mouse", "Fly", "Arabidopsis"), 
                         c("Human", "Mouse", "Fly", "Arabidopsis")))

dist_obj <- as.dist(mock_dist_matrix)

cat("\nCalculated Distance Matrix:\n")
print(dist_obj)
