test_that("palette display", {

  expect_silent(view_all_palettes())
  expect_error(view_all_palettes(type = "seq"))

  expect_error(MSUcols("new_name"))
  expect_error(MSUcols("msu_qual1", type = "cont"))
  expect_error(MSUcols("msu_qual1", direction = 0))
  expect_silent(MSUcols("msu_qual1", n = 4))
  expect_silent(MSUcols("msu_qual1", direction = -1))

})
