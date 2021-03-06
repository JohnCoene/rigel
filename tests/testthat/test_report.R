library(oRion)

context("getReport")

test_that("error", {
  skip_on_cran()
  expect_error(getReport())
  cred <- readRDS("cred.RDS")
  orionOAuth(client.id = cred$client.id, client.secret = cred$clien.secret)
  expect_error(getReport(column = c("impression"),
                         group.by = c("datetime", "campaign"),
                         start = Sys.Date() - 7))
  expect_error(getReport(column = c("impression", "conversion"),
                         group.by = c("datetime"),
                         start = Sys.Date() - 7))
  expect_error(getReport(column = c("impression"),
                         group.by = c("datetime"),
                         start = Sys.Date() - 7))
  # wrong column
  expect_error(getReport(column = c("error", "conversion"),
                         group.by = c("datetime", "campaign"),
                         start = Sys.Date() - 7))
  # wrong group
  expect_error(getReport(column = c("impression", "conversion"),
                         group.by = c("error", "campaign"),
                         start = Sys.Date() - 7))
})

test_that("documentation examples", {
  skip_on_cran()
  cred <- readRDS("cred.RDS")
  orionOAuth(client.id = cred$client.id, client.secret = cred$clien.secret)
  # get daily campaign impressions and conversions for the past 7 days
  dat <- getReport(column = c("impression", "conversion"),
                   group.by = c("datetime", "campaign"),
                   start = Sys.Date() - 7)
  expect_equal(ncol(dat), 4)
})