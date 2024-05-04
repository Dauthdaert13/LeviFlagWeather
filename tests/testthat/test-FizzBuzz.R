test_that("multiplication works", {
  expect_equal(2 * 2, 4)
})

test_that("output is correct for valid input", {
  n <- as.integer(15)
  expect_equal(length(fizz_buzz(n)), n)
})


test_that("function throws error for invalid input", {
  expect_error(fizz_buzz(-5), "n must be a finite positive integer")
  expect_error(fizz_buzz(0), "n must be a finite positive integer")
  expect_error(fizz_buzz(Inf), "n must be a finite positive integer")
})


