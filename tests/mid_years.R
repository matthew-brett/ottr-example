library(testthat)

test_metadata = "
name: mid_years
cases:
  - name: mid_years_1
    hidden: false
    points: 1
  - name: mid_years_2
    hidden: true
    points: 1
"

test_that("mid_years_0", {
  # Initial screening
  expect_true(exists('mid_years'))
})

test_that("mid_years_0_1", {
  # Initial screening
  expect_true(is.numeric(mid_years))
})

test_that("mid_years_1", {
  # Initial screening
  expect_true(length(mid_years) == 4)
})

test_that("mid_years_2", {
  expect_true(all(mid_years == c(1850, 1900, 1950, 2000)))
})
