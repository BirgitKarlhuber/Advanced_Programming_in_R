#' Example of an unweighted graph
#'
#' A 'data.frame' with three variables (v1, v2 and w) that contains the edges of the graph (from 
#' v1 to v2) with the weight of the edge (w) which represents the graph. 
#'
#' @format ## `wiki_graph`
#' A data frame with 18 rows and 3 columns:
#' \describe{
#'   \item{v1}{(from) edge}
#'   \item{v2}{(to) edge}
#'   \item{w}{weight of the edge}
#' }
#' 
#' @export
#' 
#' @examples
#' wiki_graph <- Lab3dabk::wiki_graph
#' Lab3dabk::dijkstra(wiki_graph, 1)
#' 
#' @source <https://en.wikipedia.org/wiki/Dijkstra's_algorithm>
"wiki_graph"