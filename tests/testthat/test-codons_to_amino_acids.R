test_that("codons_to_amino_acids translates codons correctly", {
  expect_equal(codons_to_amino_acids("AUG"), "M")
  expect_equal(codons_to_amino_acids(c("AUG", "GCC", "UGG", "UAA")), "MAW_")
  expect_equal(codons_to_amino_acids(character(0)), "")
})
