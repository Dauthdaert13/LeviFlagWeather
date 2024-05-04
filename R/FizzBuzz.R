#' Fizz Buzz Game
#'
#' This function generates the first n terms of the Fizz Buzz game.
#'
#' @param n An integer specifying the number of terms to generate.
#'
#' @return A vector containing the first n terms of the Fizz Buzz game.
#'
#' @examples
#' fizz_buzz(15)
#'
#' @export
fizz_buzz <- function(n) {
  if ((!is.integer(n) && (n != as.integer(n))) || n <= 0 || !is.finite(n)) {
    stop("n must be a finite positive integer")
  }

  result <- character(n)
  for (i in 1:n) {
    if (i %% 3 == 0 & i %% 5 == 0) {
      result[i] <- "Fizz Buzz"
    } else if (i %% 3 == 0) {
      result[i] <- "Fizz"
    } else if (i %% 5 == 0) {
      result[i] <- "Buzz"
    } else {
      result[i] <- as.character(i)
    }
  }
  return(result)
}


