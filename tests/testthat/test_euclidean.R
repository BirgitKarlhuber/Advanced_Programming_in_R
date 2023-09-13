
library(Lab3dabk)


test_that("Function: euclidean()", {
  
  # Expect object
  expect_true(exists("euclidean"), info = "No object 'euclidean' exists.")
  
  # Expect class
  expect_is(euclidean, class = "function",
            info = "Object 'euclidean' is not a function.")
  
   # Test cases (arguments)
  x_test <- c(1071, 1955)
  y_test <- c(462, 435)
  
  # Expect to run
  expect_silent(suppressWarnings(suppressMessages(euclidean(x = x_test[1], y = y_test[1]))))
  expect_silent(suppressWarnings(suppressMessages(euclidean(x = x_test[2], y = y_test[2]))))
  
  # Expect assertions
  expect_error(euclidean(x = -10, y = 3), 
               info = "Input must be a natural number > 0")
  
  expect_error(euclidean("y",3),
               info = "Input must be a natural number > 0")
  
  
  # Run functions
  test_res1 <- euclidean(x = x_test[1], y = y_test[1])
  test_res2 <- euclidean(x = x_test[2], y = y_test[2])
  
  ## Expect results
  # Expect class
  expect_is(test_res1, "numeric", 
            info = "'euclidean()' do not return a correct object.")
  expect_is(test_res2, "numeric", 
            info = "'euclidean()' do not return a correct object.")
  
  # Expect dimensions
  expect_true(length(test_res1) == 1, 
              info = "'euclidean()' do not return an object with correct dimensions.")
  
  # Expect results
  expect_true(tolower(test_res1) == 21, 
              info = "'euclidean()' returns erroneous results.")
  expect_true(tolower(test_res2) == 5, 
              info = "'euclidean()' returns erroneous results.")
})
