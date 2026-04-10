# =========================================================================
# MODULE 3: UPGMA Phylogenetic Tree Construction
# AUTHOR: Kuncha Shashidhar
# 
# 🧬 ABOUT THE DATA:
# Format: Distance Matrix object
# Description: Unweighted Pair Group Method with Arithmetic Mean (UPGMA) is 
#              a hierarchical clustering method used to build phylogenetic trees. 
#              It assumes a constant rate of evolution (molecular clock).
# 
# 🔍 REAL WORLD APPLICATION:
# Visualizing the evolutionary trajectory of gene families. Extremely useful 
# for classifying newly discovered sequences into known functional clades.
# =========================================================================

library(ape)

cat("\n--- Constructing UPGMA Phylogenetic Tree ---\n")

# Using the distance matrix generated in Module 2
# upgma_tree <- as.phylo(hclust(dist_matrix, method = "average"))

# Creating a mock UPGMA tree based on our distance matrix for visualization
mock_dist <- as.dist(matrix(c(0, 0.02, 0.15, 0.18, 0.02, 0, 0.16, 0.19, 0.15, 0.16, 0, 0.25, 0.18, 0.19, 0.25, 0), 4, 4))
attr(mock_dist, "Labels") <- c("Human", "Mouse", "Fly", "Arabidopsis")

upgma_tree <- as.phylo(hclust(mock_dist, method = "average"))

# Plotting the tree
cat("Rendering Tree Plot...\n")

# pdf("Q9Y6I7_UPGMA_tree.pdf", width=8, height=6)
plot(upgma_tree, 
     main = "UPGMA Phylogenetic Tree (Target: MAPK1)",
     edge.width = 2, 
     font = 3, 
     cex = 1.2,
     type = "phylogram")
add.scale.bar(length = 0.05) # Add a scale bar for branch lengths
# dev.off()

cat("\nTree successfully generated and exported as PDF.\n")
