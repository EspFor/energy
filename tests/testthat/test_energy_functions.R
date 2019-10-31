context("get_production()")

test_that("Rett verdi for default values", {

  .df = df
  powerplant = "Aall-Ulefoss"

  expect_equal(44.0160, get_production())

})
