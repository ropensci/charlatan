context("InternetProvider works")



test_that("InternetProvider works", {
  aa <- InternetProvider_en_US$new()
  expect_is(aa, "InternetProvider")
  expect_is(aa, "R6")
  # we don't have providers for every locale, so some
  # providers that are called from InternetProvider will
  # default to en_US and warn us. That is good and useful but
  # we must capture and check those warnings.
  # But I don't want to hard-code all the locales that are missing for every
  # combination of locales. So here is a workaround to check all methods for
  # all locales but also capture all warnings.

  cp <- locale_mismatch("InternetProvider", "CompanyProvider")
  lp <- locale_mismatch("InternetProvider", "LoremProvider")
  pp <- locale_mismatch("InternetProvider", "PersonProvider")
  warn_locales <- unique(c(cp, lp, pp))

  for (loc in aa$allowed_locales()) {
    # bit of a workaround to make sure we capture warnings for a subset only.
    if (loc %in% warn_locales) {
      expect_warning(
        {
          ip <- cr_loc_spec_provider("InternetProvider", loc)
        },
        regexp = sprintf("Provider does not have locale %s, defaulting to", loc),
        label = loc
      )
    } else {
      ip <- cr_loc_spec_provider("InternetProvider", loc)
    }

    expect_is(ip$tld, "function")
    expect_is(ip$tld(), "character")

    expect_is(ip$ascii_email, "function")
    expect_match(ip$ascii_email(), "\\@")

    expect_is(ip$domain_name, "function")
    expect_is(ip$domain_name(), "character")

    expect_is(ip$email, "function")
    expect_is(ip$email(), "character")
    expect_match(ip$email(), "\\@")

    expect_is(ip$image_url(), "character")
    expect_match(ip$image_url(), "http")

    expect_is(ip$slug(), "character")
    expect_match(ip$slug(), "-")
    expect_match(ip$slug(), "[A-Za-z]")
  }
})

test_that("IP address generation works", {
  skip_if_not_installed("ipaddress")

  aa <- InternetProvider_en_US$new()

  expect_is(aa$ipv4(), "character")
  expect_true(ipaddress::is_ipv4(ipaddress::ip_address(aa$ipv4())))

  expect_is(aa$ipv4(network = TRUE), "character")
  expect_true(ipaddress::is_ipv4(ipaddress::ip_network(aa$ipv4(network = TRUE))))

  expect_is(aa$ipv6(), "character")
  expect_true(ipaddress::is_ipv6(ipaddress::ip_address(aa$ipv6())))

  expect_is(aa$ipv6(network = TRUE), "character")
  expect_true(ipaddress::is_ipv6(ipaddress::ip_network(aa$ipv6(network = TRUE))))
})
