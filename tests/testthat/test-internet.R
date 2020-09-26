context("InternetProvider works")

test_that("InternetProvider works", {
  aa <- InternetProvider$new()

  expect_is(aa, "InternetProvider")
  expect_is(aa, "R6")

  expect_is(aa$tld, "function")
  expect_is(aa$tld(), "character")

  expect_is(aa$ascii_email, "function")
  expect_match(aa$ascii_email(), "\\@")

  expect_is(aa$domain_name, "function")
  expect_is(aa$domain_name(), "character")

  expect_is(aa$email, "function")
  expect_is(aa$email(), "character")
  expect_match(aa$email(), "\\@")

  expect_is(aa$image_url(), "character")
  expect_match(aa$image_url(), "http")

  expect_is(aa$slug(), "character")
  expect_match(aa$slug(), "-")
  expect_match(aa$slug(), "[A-Za-z]")
})

test_that("IP address generation works", {
  skip_if_not_installed("ipaddress")

  aa <- InternetProvider$new()

  expect_is(aa$ipv4(), "character")
  expect_true(ipaddress::is_ipv4(ipaddress::ip_address(aa$ipv4())))

  expect_is(aa$ipv4(network = TRUE), "character")
  expect_true(ipaddress::is_ipv4(ipaddress::ip_network(aa$ipv4(network = TRUE))))

  expect_is(aa$ipv6(), "character")
  expect_true(ipaddress::is_ipv6(ipaddress::ip_address(aa$ipv6())))

  expect_is(aa$ipv6(network = TRUE), "character")
  expect_true(ipaddress::is_ipv6(ipaddress::ip_network(aa$ipv6(network = TRUE))))
})
