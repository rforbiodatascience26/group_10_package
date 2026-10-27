#' Translate RNA codons into an amino acid sequence
#'
#' Given a character vector of uppercase three-letter codons, looks up each codon's
#' amino acid in the genetic code map and returns them as a single string
#' of single-letter codes.
#'
#' @param codons A character vector of three-letter RNA codons, e.g.
#'   `c("ATG", "GCC", "TGG")`. Case-sensitive, and must contain only valid
#'   codons from `codon_table`.
#'
#' @returns A string of single-letter amino acid codes, one per codon.
#' Stop codons are translated to `_`.
#'
#' @export
#'
#' @examples
#' codons_to_amino_acids(c("AUG", "GCC", "UGG", "UAA"))
#' # returns "MAW_"
codons_to_amino_acids <- function(codons){
  amino_acids <- paste0(codon_table[codons], collapse = "")
  return(amino_acids)
}
