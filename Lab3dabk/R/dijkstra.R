

dijkstra <- function(graph, init_node){
  stopifnot(is.data.frame(graph)) # , length(graph)==3
  
  num_nodes <- length(unique(graph[[2]])) # get the number of nodes/vertex
  
  # create a matrix of the distances
  data <- matrix(Inf,nrow = num_nodes, ncol = num_nodes)
  diag(data) <- 0
  
  for(i in 1:nrow(graph)){
    data[graph$v1[i],graph$v2[i]] <- graph$w[i]
  }
  
  # initialize vectors for shortest distance and previously visited
  dist <- rep(Inf,nrow(data))
  prev <- rep(FALSE, nrow(data))
  
  dist[init_node] <- 0 # distance from the starting node to itself - zero
  
  repeat{
    # find node with the currently shortest distance from the initial node
    short_dist <- Inf
    short_index <- -1
    
    for(i in seq_along(dist)) {
      if(dist[i] < short_dist && !prev[i]){
        short_dist <- dist[i]
        short_index <- i
      }
    }
    
    if(short_index == -1){
      # we already visited all nodes -> return dist-vector
      return(dist)
      break
    } else {
      
      # for all neighbor-nodes we have not visited so far
      for(i in seq_along(data[short_index,])) {
        
        if(data[short_index,i] != 0 && dist[i] > (dist[short_index] + data[short_index,i])){
          
          dist[i] = dist[short_index] + data[short_index,i] # this is the new shortest path
         
        }
        prev[short_index] = TRUE # set "prev" to TRUE for the current node
      }
    }
  }
}
  
wiki_graph <- data.frame(v1=c(1,1,1,2,2,2,3,3,3,3,4,4,4,5,5,6,6,6),
                         v2=c(2,3,6,1,3,4,1,2,4,6,2,3,5,4,6,1,3,5),
                         w=c(7,9,14,7,10,15,9,10,11,2,15,11,6,6,9,14,2,9))

dijkstra(wiki_graph, 1)
dijkstra(wiki_graph, 3)

