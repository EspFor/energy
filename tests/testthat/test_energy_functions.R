context("get_production()")

test_that("Rett verdi for default values", {

  df_test <- read.csv(file="C:/Users/NO008122/Documents/R/energy/data/nve.csv", header=TRUE, sep=",")
  powerplant <- "Aall-Ulefoss"

  expect_equal(get_production(df_test, powerplant), 44.0160)

})

test_that("Output er numeric", {

  df_test <- read.csv(file="C:/Users/NO008122/Documents/R/energy/data/nve.csv", header=TRUE, sep=",")
  powerplant <- "Aall-Ulefoss"

  expect_true(is.numeric(get_production(df_test, powerplant)))

})

context("get_production()")

test_that("Rett verdi for kraftverk uten desimaler", {

  df_test <- read.csv(file="C:/Users/NO008122/Documents/R/energy/data/nve.csv", header=TRUE, sep=",")
  powerplant <- "Alsaker"

  expect_equal(get_production(df_test, powerplant), 5)

})

