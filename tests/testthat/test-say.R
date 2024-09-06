test_that("what is character string", {
  what <- "This is a character string"
  expect_type(what, "character")
  expect_gt(length(what), 0)
})

test_that("say outputs correctly", {
  expect_length(say(), 0)
  expect_null(say())
  expect_invisible(say())
  expect_message(say())
})
