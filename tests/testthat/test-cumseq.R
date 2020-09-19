test_that("cumseq() create incremental sequence for a change in value", {
  a <- c(0, 0, 1, 2, 2)
  b <- c(0, 0, 1, NA, NA)
  c <- c(1L, 1L, 2L, 3L, 3L)

  expect_identical(cumseq(a), c)
  expect_identical(cumseq(b, fill_missing = 9), c)
})
