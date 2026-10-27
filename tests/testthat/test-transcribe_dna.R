test_that("transcribe_dna replaces T with U", {
  expect_equal(transcribe_dna("ATGCT"), "AUGCU")
  expect_equal(transcribe_dna("TTT"), "UUU")
  expect_equal(transcribe_dna("AGC"), "AGC")
})
