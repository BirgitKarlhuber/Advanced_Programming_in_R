#' Algorithm to find the greatest common divisor of two numbers 
#' 
#' The algorithm computes the greatest common divisor of two numbers x and y. 
#'
#' @param x is a whole number
#' @param y is a whole number
#'
#' @return The greatest common divisor is the largest whole number that divides both x and y without a remainder. 
#'
#' @export
#' 
#' @examples
#' euclidean(x = 1071, y = 462)
#' 
#' @seealso \url{https://en.wikipedia.org/wiki/Euclidean_algorithm}


euclidean <- function(x,y){
  stopifnot(is.numeric(x), is.numeric(y))
  x <- abs(x); y <- abs(y)
  
  while (x != y){
    if (x>y) x = x - y
    else y = y - x
  }
  return(x)
}
