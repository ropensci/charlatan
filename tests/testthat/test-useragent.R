test_that("UserAgentProvider works", {
  aa <- UserAgentProvider_en_US$new()
  expect_s3_class(aa, "UserAgentProvider")
  expect_s3_class(aa, "R6")

  for (loc in aa$allowed_locales()) {
    prov <- cr_loc_spec_provider("UserAgentProvider", loc)
    expect_type(prov$mac_processor(), "character")
    expect_type(prov$linux_processor(), "character")
    expect_type(prov$user_agent(), "character")
    expect_type(prov$chrome(), "character")
    expect_match(prov$chrome(), "Chrome")
    expect_match(prov$firefox(), "Firefox")
    expect_match(prov$safari(), "Safari")
    expect_match(prov$opera(), "Opera")
    expect_type(prov$internet_explorer(), "character")
    expect_match(prov$windows_platform_token(), "Win")
    expect_match(prov$linux_platform_token(), "Linux")
    expect_match(prov$mac_platform_token(), "Mac")
  }
})
