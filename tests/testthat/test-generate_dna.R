test_that("generate_dna returns a DNA sequence of the requested length", {
  dna <- generate_dna(10)

  expect_type(dna, "character")
  expect_length(dna, 1)
  expect_equal(nchar(dna), 10)
  expect_true(grepl("^[ATGC]+$", dna))
})
