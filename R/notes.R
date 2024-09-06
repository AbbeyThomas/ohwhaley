#Exercise 1 
library(testthat) # loading the package
# passes
expect_equal(5*2, 10)
#Passes
expect_equal(5*2, 10+ 1e-7)
#fails
expect_equal(5*2, 10+ 1e-6)
#fails
expect_identical(2*2, 4+ 1e-8)

m <- function(x,y){
  return(x*y)
}
# fail
expect_message(m("2","3"), "non-numeric argument to binary operator")
expect_warning(m("2","3"), "non-numeric argument to binary operator")
# pass
expect_error(m("2","3"), "non-numeric argument to binary operator")
# pass
expect_equal(m(2,3), 6)
expect_equal(m(2,c(2,3)), c(4,6))
expect_error(m(2,"3"), "non-numeric argument to binary operator")

is_greater_10 <- function(x){
  if (x > 10) cat("Not greater than 10")
}
# pass
expect_null(is_greater_10(9))
# fail 
expect_identical(is_greater_10(11), "Not greater than 10")
# pass
expect_output(is_greater_10(11))
# fail 
expect_message(is_greater_10(11))
Think you have mastered them? Can you tell what’s the difference between these expectation?
  
  Are the values equal, equivalent or identical?
  expect_equal(x, y)
expect_equivalent(x, y)
expect_identical(x, y)
What’s the difference between output/message/warning/error?
  expect_output(x, y)
expect_message(x, y)
expect_warning(x, y)
expect_error(x, y)

# Step 3: Declare the Pipe Operator
usethis::use_pipe()

# Step 4: Add a License
usethis::use_mit_license("Your Name")

# Step 5: Create Documentation
# The documentation has already been included in the code above.

# Step 6: Generate the Documentation
devtools::document()

# Step 7: Add Tests
usethis::use_test("say")

# Add the following tests to `test-say.R`

# Step 8: Check the Package
devtools::check()

# Step 9: Build the Package Locally
devtools::build()
