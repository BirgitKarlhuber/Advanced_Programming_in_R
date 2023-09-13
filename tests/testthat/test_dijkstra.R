
library(Lab3dabk)

wiki_graph <- data.frame(v1=c(1,1,1,2,2,2,3,3,3,3,4,4,4,5,5,6,6,6), 
                         v2=c(2,3,6,1,3,4,1,2,4,6,2,3,5,4,6,1,3,5), 
                         w=c(7,9,14,7,10,15,9,10,11,2,15,11,6,6,9,14,2,9))

test_that("Function: dijkstra()", {
  
  # Expect object
  expect_true(exists("dijkstra"), info = "No object 'dijkstra' exists.")
  
  # Expect class
  expect_is(dijkstra, class = "function",
            info = "Object 'dijkstra' is not a function.")
  
  # Test cases (arguments)
  init_node_test <- c(1, 3)
  
  # Expect to run
  expect_silent(suppressWarnings(suppressMessages(dijkstra(graph = wiki_graph, init_node = init_node_test[1]))))
  expect_silent(suppressWarnings(suppressMessages(dijkstra(graph = wiki_graph, init_node = init_node_test[2]))))
  
  # Expect assertions
  
  wiki_graph_matrix <- data.matrix(wiki_graph)
  
  expect_error(dijkstra(wiki_graph_matrix, 1), 
               info = "Input must be a 'data.frame'")
  
  expect_error(dijkstra(wiki_graph, "3"),
               info = "Input must be a a numerical value")
  
  # Run functions
  test_res1 <- dijkstra(graph = wiki_graph, init_node = init_node_test[1])
  test_res2 <- dijkstra(graph = wiki_graph, init_node = init_node_test[2])
  
  ## Expect results
  # Expect class
  expect_is(test_res1, "numeric", 
            info = "'dijkstra()' do not return a correct object.")
  expect_is(test_res2, "numeric", 
            info = "'dijkstra()' do not return a correct object.")
  
  # Expect dimensions
  expect_true(length(test_res1) == 6, 
              info = "'dijkstra()' do not return an object with correct dimensions.")
  
  # Expect results
  expect_true(all(tolower(test_res1) == c(0, 7, 9, 20, 20, 11)), 
              info = "'dijkstra()' returns erroneous results.")
  expect_true(all(tolower(test_res2) == c(9, 10, 0, 11, 11, 2)), 
              info = "'dijkstra()' returns erroneous results.")
})
