#' Algorithm to find the greatest common divisor of two numbers 
#' 
#' The algorithm computes the greatest common divisor of two natural numbers x and y. 
#'
#' @param x is greater than 0 while x is whole number
#' @param y is greater than 0 while y is whole number
#'
#' @return The greatest common divisor is the largest natural number that divides both x and y without a remainder. 
#'
#' @export
#' 
#' @examples
#' euclidean(x = 1071, y = 462)
#' 
#' @seealso \url{https://en.wikipedia.org/wiki/Euclidean_algorithm}


euclidean <- function(x,y){
  stopifnot(is.numeric(x), is.numeric(y), x>0, y>0)
  
  while (x != y){
    if (x>y) x = x - y
    else y = y - x
  }
  return(x)
}
