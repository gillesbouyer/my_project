# run the code at the link below if this does not run
# https://christophergandrud.github.io/networkD3/ 

  library(networkD3)
 
  MisNodes <- read.csv(file="C:/Users/i0s6026/My documents/excel/MisNodesall.csv", header=TRUE, sep=",")
  MisLinks <- read.csv(file="C:/Users/i0s6026/My documents/excel/MisLinksall.csv", header=TRUE, sep=",")
  
  forceNetwork(Links = MisLinks, Nodes = MisNodes,
                             Source = "source", Target = "target",
                             Value = "value", NodeID = "name",
                             Nodesize = "nodesize",
                             Group = "group", fontSize = 20, 
                            opacity = 0.8,
               colourScale = JS("d3.scaleOrdinal(d3.schemeCategory10);"),
                            bounded = TRUE)