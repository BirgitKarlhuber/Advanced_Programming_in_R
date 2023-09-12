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
#' @example
#' euclidean(x = 1071, y = 462)

euclidean <- function(x,y){
  while (x != y){
    if (x>y) x = x - y
    else y = y - x
  }
  return(x)

}

