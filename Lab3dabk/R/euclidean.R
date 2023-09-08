
euclidean <- function(x,y){
  while (x != y){
    if (x>y) x = x - y
    else y = y - x
  }
  return(x)

}
