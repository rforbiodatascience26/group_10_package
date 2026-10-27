test_that("split_codons splits a sequence into groups of three", {
  expect_equal(
    split_codons("AUGCCCUAA"),
    c("AUG", "CCC", "UAA")
  )
})

test_that("split_codons uses the chosen starting position", {
  expect_equal(
    split_codons("AAUGCCCUAA", start = 2),
    c("AUG", "CCC", "UAA")
  )
})

test_that("split_codons omits an incomplete final codon", {
  expect_equal(
    split_codons("AUGCCCUAAA"),
    c("AUG", "CCC", "UAA")
  )
})
