library(testthat)

test_metadata = "
name: high_temps
cases:
  - name: high_temps_1
    hidden: false
    points: 1
  - name: high_temps_2
    hidden: true
    points: 1
"

test_that("high_temps_1", {
  # Initial screening
  expect_true(length(high_temps) == 4)
})

test_that("high_temps_2", {
  expect_true(all(high_temps == c(13.6, 14.39, 14.59, 15.16)))
})
