
if (!require("BiocManager", quietly = TRUE))
  install.packages("BiocManager")

BiocManager::install("RCy3")

require(RCy3)
cytoscapePing()
cytoscapeVersionInfo()
openSession("proten dataset.cys")#
Sys.sleep(1)
setCurrentView("TP53 improved")
nodetab=getTableColumns(table="node")
edgetab=getTableColumns(table="edge")

install.packages("dplyr")
library(dplyr)

library(igraph)
valid_edges <- subset(edgetab, source %in% nodetab$name & target %in% nodetab$name)
g2 <- graph_from_data_frame(d = splitedge,directed = FALSE)

install.packages("stringr")
library(stringr)

newNode <- data.frame(nodetab$`shared name`)

dup_names <- newNode$names[duplicated(newNode$names)]
if (length(dup_names) > 0) {
  newNode <- newNode %>%
    mutate(names = ifelse(names %in% dup_names, paste0(names, "_", row_number()), names))
}

missing_vertices <- unique(c(setdiff(splitedge$from, newNode$name), setdiff(splitedge$to, newNode$name)))

if (length(missing_vertices) > 0) {
  newNode <- rbind(newNode, data.frame(names = missing_vertices))
}


colnames(newNode) <- "names"
colnames(new_edge) <- PP
splitedges <- str_split(new_edge$PP, "(pp)",simplify = TRUE)
colnames(splitedges) <- c("from", "to")
new_edge <- data.frame(edgetab$`shared name`)
splitedge <- data.frame(splitedges)
splitedge$from <- sub("\\(", "", splitedge$from)
splitedge$to <- sub("\\)", "", splitedge$to)
splitedge$from <- sub("\\s*", "", splitedge$from)
splitedge$to <- sub("\\s*", "", splitedge$to)

degree <- degree(g)
betweenness <- betweenness(g)
closeness <- closeness(g)
eigenvector <- eigen_centrality(g)$vector
adj_matrix <- as_adjacency_matrix(g)

degree2 <- degree(g2)
betweenness2 <- betweenness(g2)
closeness2 <- closeness(g2)
eigenvector2 <- eigen_centrality(g2)$vector
adj_matrix2 <- as_adjacency_matrix(g2)

print(adj_matrix)
print("Eigenvector Centrality:")
print(eigenvector)

degree_matrix <- matrix(degree, ncol = 1) 
degree_matrix2 <- matrix(degree2, ncol = 1) 

library(Matrix)

eigenvectorBetter1 <- adj_matrix3 %*% degree_matrix
print(eigenvectorBetter)



adj_matrix3 <- as.matrix(adj_matrix)
write.csv(adj_matrix3, file = "adjacency_matrix.csv", row.names = TRUE)

matrix_size <- dim(adj_matrix3)
